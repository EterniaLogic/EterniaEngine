#include "Sprite2D.h"

using namespace Magick;
using namespace std;

Sprite2D::Sprite2D(){
    loaded=false;
    draw=true;
    bound=false;
    
    frameFps = 30;
    maxFrames = 1;
    currentFrame = -1; // -1 compensates for first-run
    
    scale = 1.0f;
    imagedata = 0x0;
    
    anchor = S2D_LEFTTOP;
    
    
    //glGenFramebuffers(1, &readFboId);
    readFboId = -1;
    texid = -1;
    depthbufid = -1;
    timeset = 100000;
}




// open up image from file or raw data
void Sprite2D::openImage(CharString img, bool fromMemory){
    currentFrame=0;
    try{
        if(!fromMemory){
            //image.read(img.get());
            readImages(&imageList, img.get());
            cout << "Loaded Sprite Image: " << img.get() << endl;
        }else{
            // load data from memory? (May be required if image is encrypted before-hand)
            
            Blob blobdata(img.get(), img.getSize());
            readImages(&imageList, blobdata);
            //image.read(blobdata);
        }
        
        maxFrames = imageList.size();
        loaded=true;
    }catch(Exception &error_){
        cout << "Caught exception: " << error_.what() << endl;
        loaded=false;
        maxFrames=0;
    }
}

void Sprite2D::animateTick(long timeMillis){
    //image.magick("RAW"); // converts to RAW data
    //cout << "animateTick()" << endl; cout.flush();

    if(!loaded) return;
    if(maxFrames < 1) return;
    
    // determine if the time passed has incremented enough
    // compensate for any delays.
    if(timeMillis+timepassed > image.animationDelay()*10){
        timepassed -= image.animationDelay()*10;
        if(currentFrame++ >= maxFrames-1) 
            currentFrame = 0;
    }else{
        // otherwise just increase the known time, then exit.
        timepassed += timeMillis;
        return;
    }
        
    //cout << "Current Image Frame: " << currentFrame << endl;
        
    std::list<Image>::iterator it = imageList.begin();
    advance(it, currentFrame);
    image = (Image)(*it);
    
    width = image.columns();
    height = image.rows();
    
    //cout << "bind size: ("<< width << ", " << height << ", " << (width*height*image.depth())/4 << " bytes)" << endl;
    //cout << "depth: " << image.depth() << endl;
    
    
    // Deallocate previous data if it is used
    if(imagedata != 0x0){
        free(imagedata);
    }
    
    // Allocate new memory.
    imagedata = (GLvoid*)calloc(image.depth(), width*height*4);
//   image->magick("RGBA");
    
    if(image.depth() > 3)
        image.write(0,0,width,height,"RGBA", IntegerPixel, imagedata);
    else image.write(0,0,width,height,"RGBA", ShortPixel, imagedata);
    
    
    
    bound = false;
}


void Sprite2D::setLocation(vertex loc){
    location = loc;
}

vertex Sprite2D::getLocation(){
    return location;
}
void Sprite2D::setScale(float scl){
    scale = scl;
}
float Sprite2D::getScale(){
    return scale;
}

void Sprite2D::calculateScale(int width, int height){
    scale = this->width/width;
}

void Sprite2D::setAnchorLocation(S2D_IMGANCHOR anchort){
    anchor = anchort;
}

// called during draw, If image already bound, do not redo. glTexImage2D.
void Sprite2D::bindImage(){
    //animateTick(0); // animate tick in case of still image
    if(maxFrames < 1){
        loaded=false;
        bound=false;
    }

    GLuint format, format2;

    // load in image.
    switch(image.depth()*4){
        case 32:
                format = GL_RGBA;
                format2 = GL_RGBA32I;
            break;
        case 16:
                format = GL_RGBA;
                format2 = GL_RGBA16I;
            break;
        case 8:
                format = GL_RGBA8;
                format2 = GL_RGBA8;
            break;
    }
    
    // Cache data
    //glBindTexture(GL_TEXTURE_2D, texid);
    if(texid == -1)
        glGenTextures(1, &texid);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, texid);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    
    
    if(readFboId == -1) glGenFramebuffers(1, &readFboId);
    if(depthbufid == -1) glGenRenderbuffers(1, &depthbufid);
    
    
    if(!bound){
        glTexImage2D(GL_TEXTURE_2D, 0, GL_COMPRESSED_RGBA,
                   width,height,0,GL_RGBA,
                   GL_UNSIGNED_INT, imagedata);
       // cout << "Image pixel 0: " << ((char*)imagedata)[0] << ((char*)imagedata)[1] << ((char*)imagedata)[2] << ((char*)imagedata)[3] << endl;
        
        
    }
    
    glBindTexture(GL_TEXTURE_2D, 0);
    
    // FrameBuffer data
    glBindFramebuffer(GL_FRAMEBUFFER, readFboId);
    glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, texid, 0);
    
    // Renderbuffer data
    glBindRenderbuffer(GL_RENDERBUFFER, depthbufid);
    glRenderbufferStorage(GL_RENDERBUFFER, format, width, height); 
    glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_RENDERBUFFER, depthbufid);
    glBindFramebuffer(GL_FRAMEBUFFER, 0);
    //*/
    
    
    
    //glBindFramebuffer(GL_DRAW_FRAMEBUFFER, readFboId);     // dst FBO (single-sample)
    //glBlitFramebuffer(0,0,width,height,0,0,width,height,GL_COLOR_BUFFER_BIT, GL_LINEAR);
    
    /*GLenum status;
    status = glCheckFramebufferStatus(GL_FRAMEBUFFER);
    switch(status){
        case GL_FRAMEBUFFER_COMPLETE:
            cout << "GL_FRAMEBUFFER_COMPLETE" << endl;
            break;
        case GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT:
            cout << "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT" << endl;
            break;
//        case GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS:
//            cout << "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS" << endl;
//            break;
        case GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT:
            cout << "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT" << endl;
            break;
        default:
            cout << "GL UNKNOWN FRAMEBUFFER STATUS..." << endl;
    }*/
    
    
    // copy frame buffer over
    /*glBindFramebuffer(GL_FRAMEBUFFER, readFboId);
    glBlitFramebuffer(0,0, width,height, 0, 0, 100,100, GL_COLOR_BUFFER_BIT, GL_NEAREST); // 100s here are window size.
    glBindFramebuffer(GL_FRAMEBUFFER, 0);*/
    
    
    //glBlitFramebuffer(0,0, width,height, 0, 0, width,height, GL_COLOR_BUFFER_BIT, GL_NEAREST); // 100s here are window size.
    
    
    
   
    bound = true;
}

// draw image at location.
void Sprite2D::drawImage(){
    // prevent using resources.
    float x,y,wid,hei;
    x = location.x;
    y = location.y;
    wid = width*scale;
    hei = height*scale;
    
    switch(anchor){
        case S2D_CENTERTOP:
                x -= wid/2;
            break;
        case S2D_RIGHTTOP:
                x -= wid;
            break;
        case S2D_LEFTCENTER:
                y -= hei/2;
            break;
        case S2D_CENTER:
                x -= wid/2;
                y -= hei/2;
            break;
        case S2D_RIGHTCENTER:
                x -= wid;
                y -= hei/2;
            break;
        case S2D_LEFTBOTTOM:
                y -= hei;
            break;
        case S2D_CENTERBOTTOM:
                x -= wid/2;
                y -= hei;
            break;
        case S2D_RIGHTBOTTOM:
                x -= wid;
                y -= hei;
            break;
    }
    
    
    if(!loaded) return;

    bindImage();
    
    //glBindFramebuffer(GL_FRAMEBUFFER, readFboId);
    
    glBindTexture(GL_TEXTURE_2D, texid);
    
    glBegin(GL_QUADS);
        glTexCoord2f(0,0);
        glVertex3f(x,y, location.z);
        
        glTexCoord2f(1,0);
        glVertex3f(x+wid,y, location.z);
        
        glTexCoord2f(1,1);
        glVertex3f(x+wid,y+hei, location.z);
        
        glTexCoord2f(0,1);
        glVertex3f(x,y+hei, location.z);
    glEnd();
    
    glBindFramebuffer(GL_FRAMEBUFFER, 0);
}

bool Sprite2D::isLoaded(){
    return loaded;
}

// Draw 3D object images
void Sprite2D::draw3D(int map3Dtype){
    switch(map3Dtype){
        case 0:
                //
            break;
    }
}

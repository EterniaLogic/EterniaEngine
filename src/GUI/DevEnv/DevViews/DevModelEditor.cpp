#include "DevModelEditor.h"

DevModelEditor::DevModelEditor(){
    camera.width = &width;
    camera.height = &height;
    //camera.eyePos = new vertex(0,0,0);
    //camera.refPos = new vertex(1,1,60);
    camera.eyePos = new vertex(1,1,60);
    name = CharString("Model Editor", 12);
    canDrag=false; // don't use standard dragging events
}

DevModelEditor::~DevModelEditor(){}

void DevModelEditor::draw(){
    // go through and draw the models
    camera.width = &parent->width;
    camera.height = &parent->height;
    int globalx = getGlobalX();
    int globaly = getGlobalY();
    debugLoggobject("devmodeleditor draw");

    //glViewport(parent->globalx, parent->globaly+25, parent->width, parent->height-25);
    glViewport(globalx, parent->parent->height-parent->height-25, parent->width, parent->height-25);

    //std::cout << parent->getGlobalX() << " " << parent->getGlobalY() << " " << parent->width << " " << parent->height << std::endl;

    camera.orthoView();
    glColor3f(0.f, 0.f, 0.f);
    gDrawRectangle(0,0,parent->width,parent->height);


    camera.perspectiveView();

    // Draw a basic grid...
    glColor3f(1.f, 1.f, 1.f);
    glLineWidth(1);
    
    glBegin(GL_LINES);
    glColor3f(1.f, 0.f, 0.f);
    glVertex3f(10000.f,0,0);
    glVertex3f(-10000.f,0,0);
    glColor3f(0.f, 1.f, 0.f);
    glVertex3f(0,10000.f,0);
    glVertex3f(0,-10000.f,0);
    glColor3f(0.f, 0.f, 1.f);
    glVertex3f(0,0,10000.f);
    glVertex3f(0,0,-10000.f);
    glEnd();


    // TEST: Draw a sin wave
    gDrawSineWave(2.f, 3.f, 0.1f);
}

void DevModelEditor::update(){
    //camera.camera_angle->x += ((double)((1.0/180.0)*3.14156))/20.;
    //camera.camera_angle->y += ((double)((1.0/180.0)*3.14156))/20.;
}


void DevModelEditor::handleMouse(MouseHandleEvent* event){
    if(event->event_type == MOUSE_DOWN){
        debugLoggobject("DevModelEditor Handle Mouse default" << endl);
        if(event->event_button == MIDDLE_BUTTON_UP){
            // zoom inwards
            camera.camera_range /= 1.2;
        }else if(event->event_button == MIDDLE_BUTTON_DOWN){
            // zoom outwards
            camera.camera_range *= 1.2;
        }
    }

    if(event->event_button == MIDDLE_BUTTON && event->event_type==MOUSE_DOWN){
        // start 3D dragging
        dragging=true;
    }else if(event->event_button == MIDDLE_BUTTON && event->event_type==MOUSE_UP){
        dragging=false;
    }

    if(dragging){
        this->dragoffsetx -= event->x;
        this->dragoffsety -= event->y;
        camera.camera_angle->x += ((double)((dragoffsetx/180.0)*3.14156))/10;
        camera.camera_angle->y += ((double)((dragoffsety/180.0)*3.14156))/10;
    }


    this->dragoffsetx = event->x;
    this->dragoffsety = event->y;
    //cout << camera.camera_range << endl;
}

void DevModelEditor::handleKeyboard(KeyHandleEvent* event){

}

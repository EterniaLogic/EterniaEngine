#include "App.h"

// initializes the GUI systems
void App::testGUI() {
    cout << "init test gui" << endl;
    testWindow = new GWindow(vertex(0,0,0), vertex(0,0,0));
    testWindow->setPosition(50,200);
    testWindow->width = 200;
    testWindow->height = 200;

    //fpsLabel = new GLabel();
    fpsLabel.setPosition(5,25);
    //fpsLabel->setParent(testWindow);

    //mPosLabel = new GLabel();
    mPosLabel.setPosition(5,50);
    //mPosLabel->setParent(testWindow);


    GSlider* slider = new GSlider();
    slider->setPosition(10,40);
    slider->width = 80;
    testWindow->addChild(slider);
    
    GTextBox* textbox = new GTextBox();
    textbox->setPosition(10,60);
    textbox->width = 180;
    textbox->height = 130;
    testWindow->addChild(textbox);
}



void loadedModelx(void* appx, Model* m) {
    //appInstance->modelbuffer.push(m); // Put model into a VBO

    m->setOffset(vertex(0,-3,0));
//    m->setScale(vertex(0.5f,0.5f,0.5f));
    cout << "Test Model loaded" << endl;
    ((App*)appx)->currentModelList.add(m);
}


void App::initTestModels() {

    /*LoadItem *mloader = new LoadItem(new CharString("./data/Model/MythrilOre.obj", 27), LT_MODEL, false);
    //LoadItem *mloader = new LoadItem(new CharString("./data/Model/Cat.obj", 20), LT_MODEL, false);
    mloader->robj = this;
    mloader->onLoadedModel = loadedModelx;

    loaders.push(mloader);*/
    
    

    /*Model* testModel = new Model();
    ModelFragment* frag = new ModelFragment();
    //testModel->rendermode=GL_QUADS;

    //for(int j=0;j<20;j++){
        frag->addVertex(vertex(1,1,-1));
        frag->addVertex(vertex(-1,1,-1));
        frag->addVertex(vertex(-1,1,-1));
        frag->addVertex(vertex(1,1,1));

        frag->addVertex(vertex(1,-1,1));
        frag->addVertex(vertex(-1,-1,1));
        frag->addVertex(vertex(-1,-1,-1));
        frag->addVertex(vertex(1,-1,-1));

        frag->addVertex(vertex(1,1,1));
        frag->addVertex(vertex(-1,1,1));
        frag->addVertex(vertex(-1,-1,1));
        frag->addVertex(vertex(1,-1,1));

        frag->addVertex(vertex(1,-1,-1));
        frag->addVertex(vertex(-1,-1,-1));
        frag->addVertex(vertex(-1,1,-1));
        frag->addVertex(vertex(1,1,-1));

        frag->addVertex(vertex(-1,1,1));
        frag->addVertex(vertex(-1,1,-1));
        frag->addVertex(vertex(-1,-1,-1));
        frag->addVertex(vertex(-1,-1,1));

        frag->addVertex(vertex(1,1,-1));
        frag->addVertex(vertex(1,1,1));
        frag->addVertex(vertex(1,-1,1));
        frag->addVertex(vertex(1,-1,-1));
    //}

    //testModel->setOffset(vertex(0, 0, 0));
    ModelMaterial* mat = new ModelMaterial();
    //mat->AmbientColor = vertex(1,0,0);
    //mat->ModelColor = vertex(1,0,0);

    frag->setMaterial(mat);
    testModel->addFragment(frag);
    //testModel->bufferModel();
    modelbuffer.push(testModel);
    testModel->setOffset(vertex(0,-3,0));
    testModel->setScale(vertex(2.f,2.f,2.f));
    currentModelList.add(testModel);*/

    /*for(int i=0; i<2000; i++)
    {
        Model* testModel = new Model();
        testModel->rendermode=GL_QUADS;
        testModel->addVertex(vertex(1,1,-1));
        testModel->addVertex(vertex(-1,1,-1));
        testModel->addVertex(vertex(-1,1,-1));
        testModel->addVertex(vertex(1,1,1));

        testModel->setOffset(vertex());
        ModelMaterial* mat = new ModelMaterial();
        mat->AmbientColor = vertex(1,0,0);
        mat->ModelColor = vertex(1,0,0);

        testModel->setMaterial(mat);
        testModel->setScale(vertex(0.1f,0.1f,0.1f));
        currentModelList.add(testModel);
    }*/
    
    
    Model* testModel = new Model();
    ModelPart* frag = new ModelPart();
        frag->addVertex(vertex(1,1,-1));
        frag->addVertex(vertex(-1,1,-1));
        frag->addVertex(vertex(-1,1,-1));
        frag->addVertex(vertex(1,1,1));

        frag->addVertex(vertex(1,-1,1));
        frag->addVertex(vertex(-1,-1,1));
        frag->addVertex(vertex(-1,-1,-1));
        frag->addVertex(vertex(1,-1,-1));

        frag->addVertex(vertex(1,1,1));
        frag->addVertex(vertex(-1,1,1));
        frag->addVertex(vertex(-1,-1,1));
        frag->addVertex(vertex(1,-1,1));

        frag->addVertex(vertex(1,-1,-1));
        frag->addVertex(vertex(-1,-1,-1));
        frag->addVertex(vertex(-1,1,-1));
        frag->addVertex(vertex(1,1,-1));

        frag->addVertex(vertex(-1,1,1));
        frag->addVertex(vertex(-1,1,-1));
        frag->addVertex(vertex(-1,-1,-1));
        frag->addVertex(vertex(-1,-1,1));

        frag->addVertex(vertex(1,1,-1));
        frag->addVertex(vertex(1,1,1));
        frag->addVertex(vertex(1,-1,1));
        frag->addVertex(vertex(1,-1,-1));
    IMaterial mat;
    mat.AmbientColor = vertex(1,0,0);
    mat.ModelColor = vertex(1,0,0);
    
    frag->rendermode = GL_QUADS;

    frag->setMaterial(mat);
    testModel->addPart(frag);
    modelbuffer.push(testModel); // Prebuffer
    testModel->setOffset(vertex(0,0,0));
    testModel->setScale(vertex(0.5f,0.5f,0.5f));
    currentModelList.add(testModel);
    
    
    // Testing 2D tiled/animated sprites for 2D-based games or 2D GUI elements.
    //  Sprites can also be used for GUI backgrounds, ect.
    Sprite2D *sprite = new Sprite2D();
    CharString imgloc;
    imgloc.set("test_sprite.gif");
    sprite->openImage(imgloc,false);
    sprite->frameFps = 1; // this test Gif is 1 FPS.
    sprite->currentFrame = 0;
    sprite->location.x = 300;
    sprite->location.y = 300;
    sprite->location.z = -5.0f;
    sprite->setScale(1.0f); // scale image size
    
    
    // Add sprite to 2D Cache for drawing
    spriteList.add(sprite);
    animationList.add(sprite); // Add to animation driver
}

#include "App.h"
#include <time.h>
#include <math.h>

using namespace std;

//#define PROFILEIT
#ifdef PROFILEIT
    #define PROFILE_ITEM(x) renderProfiler.profileItem(CharString(x))
    #define PROFILE_START() renderProfiler.beginProfile()
#else
    #define PROFILE_ITEM(x)
    #define PROFILE_START()
#endif


// Spaghetti code is bad, but the whole rendering system needs to avoid excessive usage of the stack.


float lpos[4] = {1,0.5,1,0};
bool vsync;
void App::renderRun() {
    debugLog("[Render] thread start");




    if(!pauseRender) {
        try {
            long lastTime=clock();
            glViewport(0, 0, width, height);

            glEnable(GL_LIGHTING);
            glEnable(GL_BLEND);
            glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);


            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

            camera->perspectiveView();

            glColor3f(1.f,1.f,1.f);
            //glLightfv(GL_LIGHT0, GL_POSITION, lpos);
            //glutSolidTeapot(1);


            // loop through models and draw them. (Do not handle animations here)
            // Animations are just sets of vectors with respect to time.
            //cout << "ModelCount: " << currentModelList.size() << endl;

            PROFILE_START();
            debugLog("[Render] model start");
            if(currentModelList.size() > 0) {
                glMatrixMode(GL_MODELVIEW);
                glShadeModel(GL_SMOOTH);
                glPolygonMode( GL_FRONT_AND_BACK, GL_FILL );
                // as defined in the LinkedList source for searching
                LinkedNode<Model*>* current = currentModelList.top();

                while(current != 0x0) {
                    if(current->data != 0x0) {
                        (current->data)->Draw();
                    }
                    current = current->next;
                }
                //delete current;
            }
            debugLog("[Render] model end");
            PROFILE_ITEM("models");




            // 2D Graphics (Drawn above 3D, below GUI)
            // This includes PIP, Overlay Image renders.

            // Draw Sprite Objects
            debugLog("[Render] sprite draw");

            PROFILE_START();
            if(drawSprites) {
                //glPushMatrix();
                glEnable(GL_TEXTURE_2D);
                glDisable(GL_LIGHTING);
                glColor3f(1.0f, 1.0f, 1.0f);
                camera->orthoView();

                if(spriteList.size() > 0) {
                    // as defined in the LinkedList source for searching
                    LinkedNode<Sprite2D*>* current = spriteList.top();

                    while(current != 0x0) {
                        if(current->data != 0x0) {
                            (current->data)->drawImage();
                        }
                        current = current->next;
                    }
                    //delete current;
                }
                glDisable(GL_TEXTURE_2D);
                //glPopMatrix();
            }
            PROFILE_ITEM("sprites");



            // Draw GUI Objects
            debugLog("[Render] gui draw");
            PROFILE_START();
            glDisable(GL_LIGHTING);
            if(drawGUI) {
                camera->orthoView();

                if(drawListeners.top() != 0x0) {
                    LinkedNode<void*> * current = drawListeners.top();
                    while(current != 0x0) {
                        void (*func)() = (void (*)())current->data;
                        if(func != 0x0) {
                            func(); // send to pure function
                        }
                        current = current->next;
                    }
                    //delete current;
                }
                //camera.perspectiveView();
            }
            PROFILE_ITEM("gui");



            PROFILE_START();
            glFlush();
            PROFILE_ITEM("glflush");

            debugLog("[Render] swap buffers (vSync)");
            PROFILE_START();
            glutSwapBuffers();
            PROFILE_ITEM("swapbuffers");

            debugLog("Render Time: " << ((clock()-lastTime)*1000000)/CLOCKS_PER_SEC);
            renderfinished=true;
            renderFps_++;
        } catch(int e) {
            cout << "[Render] Frame Error: "<< e << endl;
        }
    }
}

void App::renderThread() {
    long ticks_per_sec, time, last;
    pthread_setname_np(pthread_self(), "MAINRenderThread");
    vsync = config->items[string("vSync")].Compare("true",4);
    initGLUT();
    initGL();

    debugLog("[Glut Init] Start Glut Thread");
    std::thread glutinit_thread(&glutMainLoop);

    Model* model;

    while (!mDone) {
        last = clock();

        // Buffer models that need VBO buffering
        PROFILE_START();
        while(!modelbuffer.empty()) {
            model = (Model*)modelbuffer.pop();
            model->bufferModel();
        }
        PROFILE_ITEM("modelbuffer");

        // manage items that require initialization for FBOs, VBOs.

        if(!pauseRender) renderRun();

        // Timing set (Self-adjusting for any lag)

        renderProfiler.endProfile();

        if(vsync){
            ticks_per_sec = 60.0;
            time = (1000000.0/ticks_per_sec) - (((clock()-last)*1000000.0)/CLOCKS_PER_SEC);
            if(time > 0) std::this_thread::sleep_for(std::chrono::microseconds(time));
        }
    }
}

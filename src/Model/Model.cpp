#include "Model.h"

Model::Model() {
    //rendermode=GL_QUADS;
    //lScene = 0x0;
    /*offset = new vertex(0,0,0); // offset used for "Moving" the model
    rotate_axis = new vertex(0,0,0);
    scale = new vertex(1,1,1);
    rotate_angle = 0;
    buffered = false; // using VBOs?
    name = new CharString("unnamed");*/
    shader=0x0;

    //if(Model::SM == 0x0) Model::SM = new cwc::glShaderManager();
}

Model::~Model() {}

void Model::loadFromFile(CharString loc) {
    if(loc.endsWith(CharString(".obj",4))) {
        loadFromObj(loc.get());
    } else if(loc.endsWith(CharString(".fbx",4))) {
        loadFromFbx(loc.get());
    }
}


// clone this model (copy/paste data over)
Model Model::cloneModel() {
    return *this;
}

// clone this model, verticies, materials are directly pointed to the original (good for less memory usage)
Model* Model::cloneModelPtr() {
    Model* m = new Model();
    *m = *this;
    return m;
}

void Model::Draw() {

    /*if(shader == 0x0)
        shader = SM.loadfromMemory((const char*)GEN_Shaders::Light_Vertex[0], "", (const char*)GEN_Shaders::Light_Fragment[0]);*/

    //shader->begin();

    parts.freeze();
    //cout << "fragnum: " << fragments.frozenlen << fragments.size() << endl;
    for(int i=0; i<parts.frozenlen; i++) {
        parts.frozen[i]->draw();
    }

    //shader->end();
}


// Buffer the model
void Model::bufferModel() {
    parts.freeze();
    for(int i=0; i<parts.frozenlen; i++) {
        parts.frozen[i]->bufferModel();
    }
}

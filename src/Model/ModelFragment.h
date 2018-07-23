#ifndef ModelFrag_h
#define ModelFrag_h

//#define COUT_MAT_DEBUG

#ifdef COUT_MAT_DEBUG
#define debugLogm(s) cout << s << endl; cout.flush()
#else
#define debugLogm(s)  //nothing
#endif

#include "../Shaders.h"

#include <Eternia/Math/struct/vertex.h>
#include <Eternia/Data/CharString.h>
#include <Eternia/Data/LinkedList.hpp>
#include <Eternia/Data/LinkedListT.h>
#include <Eternia/Parsing/SimpleParser.h>

#include <stdlib.h>
#include <GL/glew.h>
#include <GL/gl.h>
#include <GL/glext.h>
#include <vector>
#include <malloc.h>

#ifndef Model_h
    #include "Model.h"
#else
    class Model;
#endif

//#include <fbxsdk.h>
#include "glsl.h"

class ModelFragment {
        friend class Model;

    private:
        LinkedList<vertex> verticies, normals, textureCoordinates;
        ModelMaterial* material;
        CharString name, matname;


        //FbxScene* lScene; // Manage basic Scene (We only have one model)

        int animFrame; // frame that the animation is on
        CharString animNum; // which animation is playing? (there can be many)

        vertex offset, rotate_axis, scale;
        float rotate_angle;

        bool buffered; // using VBOs?
        GLuint indexbuffer, vertexbuffer;
        unsigned int vbosize;

        GLuint *indices;
        GLfloat *pvertex;

    public:
        ModelFragment();
        void draw();


        // stuff passed down from Model.h
        void bufferModel(); // Buffer this model in the graphics card
        void addVertex(vertex* v);
        void setOffset(vertex offset);
        void setScale(vertex scale);
        void setMaterial(ModelMaterial* material);
        int rendermode;
};

#endif

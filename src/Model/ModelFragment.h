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
#include <Eternia/Design/Model/IModelPart.h>
//#include <Eternia/Design/Model/IModelPart.h>
#include <Eternia/Data/FileFormat/MTL.h>
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

class ModelFragment : public IModelPart { // OBJ.h holds most of the code for loading
        friend class Model;
public:
    ModelFragment();
    void draw();
    void bufferModel(); // Buffer this model in the graphics card
    
    // Lots of borrowed stuff from OBJ.h
};

#endif

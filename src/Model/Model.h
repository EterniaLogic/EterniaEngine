#ifndef Model_h
#define Model_h

#include "../Shaders.h"

#include <Eternia/Math/struct/vertex.h>
#include <Eternia/Data/CharString.h>
#include <Eternia/Data/LinkedList.hpp>
#include <Eternia/Design/Model/IModel.h>
#include <Eternia/Design/Model/IMaterial.h>
#include <Eternia/Design/Model/IModelPart.h>
#include <Eternia/Data/FileFormat/MTL.h>
#include <Eternia/Data/FileFormat/OBJ.h>
#include <Eternia/Parsing/SimpleParser.h>
#include <Eternia/Design/IAnimated.h>

#include <stdlib.h>
#include <GL/glew.h>
#include <GL/gl.h>
#include <GL/glext.h>
#include <vector>
#include <malloc.h>


//#include <fbxsdk.h>
#include "glsl.h"

#include "ModelPart.h"





//#define COUT_MODEL_DEBUG

#ifdef COUT_MODEL_DEBUG
#define debugLogm(s) cout << s << endl; cout.flush()
#else
#define debugLogm(s)  //nothing
#endif



// The model is used to act as a vertex system.
// Verticies are loaded from the EterniaLib, which already has an inter-linking Vertex setup.

// Not to mention that we are already using it for the entire library.
// This also enables us to use the linear algebra sector with ease.

class Model : public IModel, public IAnimated {
        friend class ModelMaterial;
private:
    cwc::glShaderManager SM;
    cwc::glShader *shader;
public:
    Model();
    virtual ~Model();

    // From IModel -> IAnimated
    void animateTick(long timeMillis);
    
    
    
    Model cloneModel(); // clone this model (copy/paste data over)
    Model* cloneModelPtr(); // clone this model, verticies, materials are directly pointed to the original (good for less memory)

    void loadFromFile(CharString loc); // Load model from file. Auto-detect filetype.
    void loadFromObj(CharString objFile); // STATIC OBJECTS open up a Obj file and load the materials relative to it. (Moderate raw file)
    void loadFromFbx(char* fbxFile); // ANIMATED CHARS open up FBX (Autodesk maya)

    void Animator(); // Animates FBX models (Used in end-line Animation thread)

    void bufferModel(); // Buffer this model in the graphics card

    void Draw(); // draws Model directly to the openGL engine
};




// mtl Schema:
/*
    # Blender MTL File: 'None'      << Comment line
    # Material Count: 1             << Not comment line, but doesn't really matter.

    newmtl Material                 << declares new material "Material"
    Ns 96.078431                    << Shininess
    Ka 0.000000 0.000000 0.000000   << Ambient Color
    Kd 0.640000 0.640000 0.640000   << Ambient Diffuse
    Ks 0.500000 0.500000 0.500000   << Specular Color
    Ni 1.000000                     << ????
    d 1.000000                      << Alpha (How transparent, also called "Tr")
    illum 2                         << Illumination model

    map_ks file.png                 << map specular color
    map_Kd file.png                 << map ambient diffuse
    map_Ka file.png                 << map ambient color
    map_d  file.png                 << map transparency
    map_Disp file.png               << map displacement (oh dear...)
    map_Ns file.png                 << map shininess (woo!)
    map_bump file.png               << map bumpiness
*/

#else
    class Model;
#endif

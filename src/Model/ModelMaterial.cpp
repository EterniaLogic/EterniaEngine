#include "ModelMaterial.h"

ModelMaterial::ModelMaterial() {
    AmbientColor=NULL_VERTEX;
    DiffuseColor=NULL_VERTEX;
    SpecularColor=NULL_VERTEX;
    EmitColor=NULL_VERTEX;
    ModelColor=NULL_VERTEX;
}

void ModelMaterial::animateTick(long timeMillis){
    // tick all images
    if(ColorMap.isLoaded()) ColorMap.animateTick(timeMillis);
    if(DiffuseMap.isLoaded()) DiffuseMap.animateTick(timeMillis);
    if(SpecularMap.isLoaded()) SpecularMap.animateTick(timeMillis);
    if(AlphaMap.isLoaded()) AlphaMap.animateTick(timeMillis);
    if(ShinyMap.isLoaded()) ShinyMap.animateTick(timeMillis);
    if(BumpMap.isLoaded()) BumpMap.animateTick(timeMillis);
    if(EmitMap.isLoaded()) EmitMap.animateTick(timeMillis);
    if(MirrorMap.isLoaded()) MirrorMap.animateTick(timeMillis);
}


void ModelMaterial::draw() {
    // Set color
    // glVertex3f();

    //glBindTexture(GL_TEXTURE_2D, texture);
    glColorMaterial ( GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE ) ;

    if(ColorMap.isLoaded()) ColorMap.draw3D(0);
    if(DiffuseMap.isLoaded()) DiffuseMap.draw3D(1);
    if(SpecularMap.isLoaded()) SpecularMap.draw3D(2);
    if(AlphaMap.isLoaded()) AlphaMap.draw3D(3);
    if(ShinyMap.isLoaded()) ShinyMap.draw3D(4);
    if(BumpMap.isLoaded()) BumpMap.draw3D(5); // requires shaders probably.
    if(EmitMap.isLoaded()) EmitMap.draw3D(6); // requires shaders probably.
    if(MirrorMap.isLoaded()) MirrorMap.draw3D(7); // requires shaders probably.


    glMaterialf(GL_FRONT_AND_BACK, GL_SHININESS, Shininess);

    // set
    if(AmbientColor != NULL_VERTEX) {
        /*GLint loc = glGetUniformLocation(shaderx, "ambient");
        if (loc != -1) glUniform3f(loc, , AmbientColor.y, AmbientColor.z);*/

        GLfloat material_Ka[] = {AmbientColor.x, AmbientColor.y, AmbientColor.z, 1.0f};
        glMaterialfv(GL_FRONT_AND_BACK, GL_AMBIENT, material_Ka);

        // set color
        glColor3f(material_Ka[0], material_Ka[1], material_Ka[2]);

        //free(amb_light);
        //cout << "ambient" << amb_light[0] << amb_light[1] << endl;
    }

    if(DiffuseColor != NULL_VERTEX) {
        /*GLint loc = glGetUniformLocation(shaderx, "diffuse");
        if (loc != -1) glUniform3f(loc, AmbientDiffuse.x, AmbientDiffuse.y, AmbientDiffuse.z);*/

        GLfloat material_Kd[] = {DiffuseColor.x, DiffuseColor.y, DiffuseColor.z, 1.0f};
        glMaterialfv(GL_FRONT_AND_BACK, GL_DIFFUSE, material_Kd);
    }

    if(SpecularColor != NULL_VERTEX) {
        /*GLint loc = glGetUniformLocation(shaderx, "specc");
        if (loc != -1) glUniform3f(loc, SpecularColor.x, SpecularColor.y, SpecularColor.z);*/

        GLfloat material_Ks[] = {SpecularColor.x, SpecularColor.y, SpecularColor.z, 1.0f};
        glMaterialfv(GL_FRONT_AND_BACK, GL_SPECULAR, material_Ks);
    }

    if(EmitColor != NULL_VERTEX) {
        GLfloat material_Ke[] = {EmitColor.x, EmitColor.y, EmitColor.z, 0.0f};
        glMaterialfv(GL_FRONT_AND_BACK, GL_EMISSION, material_Ke);
    }



    glClearDepth(1.f);
}

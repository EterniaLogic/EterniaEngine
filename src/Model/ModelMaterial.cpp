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




LinkedList<ModelMaterial>* ModelMaterial::loadFromMtl(CharString objFile) {
    cout << "Loading Materials: " << objFile.get() << endl;
    cout.flush();

    LinkedList<CharString>* linet;
    // load and parse file.
    // gets ALL lines from the file.
    LinkedList<ModelMaterial>* materials = new LinkedList<ModelMaterial>();
    ModelMaterial* material = 0x0;
    int i=0;

    //this->rendermode=GL_QUADS;

    ifstream filex;
    //cout << "aa" << endl; cout.flush();
    fileOpen(filex, objFile.get());

    CharString readx;
    CharString hash = CharString("#");
    CharString slash = CharString("//");
    CharString brack = CharString("[");

    // Read lines from the file
    while((readx = fileGetLine(filex)).getSize() > -1) {
        //debugLogmm("Line: " << readx.get());

        // Test for line comments
        if(!readx.startsWith(hash) && !readx.startsWith(slash) && !readx.startsWith(brack)) {
            //debugLogmm("Line: " << readx.get());
            linet = readx.split(' ', '`');
            //list2
            // test if line is a valid OBJ value
            if(linet->size() > 1) {

                if(linet->get(0)->Compare("newmtl",6)) { // Ambient color
                    debugLogmm("newmtl " << linet->get(1)->get());
                    material = new ModelMaterial();
                    material->name = *linet->get(1);
                    materials->add(material);
                } else if(linet->get(0)->Compare("Ka",2)) { // Ambient color
                    debugLogmm("Ka " << linet->get(1)->getFloat() << " " << linet->get(2)->getFloat() << " " << linet->get(3)->getFloat());

                    material->AmbientColor = vertex(linet->get(1)->getFloat(), linet->get(2)->getFloat(), linet->get(3)->getFloat());
                } else if(linet->get(0)->Compare("Kd",2)) { // Diffuse Color
                    debugLogmm("Kd " << linet->get(1)->getFloat() << " " << linet->get(2)->getFloat() << " " << linet->get(3)->getFloat());

                    material->DiffuseColor = vertex(linet->get(1)->getFloat(), linet->get(2)->getFloat(), linet->get(3)->getFloat());
                } else if(linet->get(0)->Compare("Ks",2)) { // Specular Color
                    debugLogmm("Ks " << linet->get(1)->getFloat() << " " << linet->get(2)->getFloat() << " " << linet->get(3)->getFloat());

                    material->SpecularColor = vertex(linet->get(1)->getFloat(), linet->get(2)->getFloat(), linet->get(3)->getFloat());
                } else if(linet->get(0)->Compare("Ke",2)) { // Emit Color
                    debugLogmm("Ke " << linet->get(1)->getFloat() << " " << linet->get(2)->getFloat() << " " << linet->get(3)->getFloat());

                    material->EmitColor = vertex(linet->get(1)->getFloat(), linet->get(2)->getFloat(), linet->get(3)->getFloat());
                } else if(linet->get(0)->Compare("Ni",2)) { // Shininess
                    debugLogmm("Ni " << linet->get(1)->getFloat());

                    material->Shininess = linet->get(1)->getFloat();
                } else if(linet->get(0)->Compare("illum",5)) { // Illumination model
                    debugLogmm("illum " << linet->get(1)->getFloat());

                    material->Illumination = linet->get(1)->getFloat();
                } else if(linet->get(0)->Compare("d",1)) { // Alpha (dissolved)
                    debugLogmm("d " << linet->get(1)->getFloat());

                    material->Alpha = linet->get(1)->getFloat();
                } else if(linet->get(0)->Compare("Tr",2)) { // Alpha reversed (Opaque)
                    debugLogmm("Tr " << linet->get(1)->getFloat());

                    material->Alpha = 1-linet->get(1)->getFloat();
                } else if(linet->get(0)->Compare("map_aas",6)) { // Anti-Aliasing on/off for textures?
                    debugLogmm("map_aat " << linet->get(1)->get());

                }


                // color maps
                else if(linet->get(0)->Compare("map_Ka",6)) { // Ambient color map
                    //ColorMap.openImage(*(linet->get(1)),false);
                    debugLogmm("map_Ka " << linet->get(1)->get());

                } else if(linet->get(0)->Compare("map_Kd",6)) { // Diffuse Color map
                    //DiffuseMap.openImage(*(linet->get(1)),false);
                    debugLogmm("map_Kd " << linet->get(1)->get());

                } else if(linet->get(0)->Compare("map_Ks",6)) { // Specular Color map
                    //SpecularMap.openImage(*(linet->get(1)),false);
                    debugLogmm("map_Ks " << linet->get(1)->get());

                } else if(linet->get(0)->Compare("map_Ke",6)) { // Emit Color map
                    //EmitMap.openImage(*(linet->get(1)),false);
                    debugLogmm("map_Ke " << linet->get(1)->get());

                } else if(linet->get(0)->Compare("map_Ni",6)) { // Shininess map
                    //ShinyMap.openImage(*(linet->get(1)),false);
                    debugLogmm("map_Ni " << linet->get(1)->get());

                }

                // geometry maps
                else if(linet->get(0)->Compare("bump",4) || linet->get(0)->Compare("map_bump",8)) { // Bump map
                    //BumpMap.openImage(*(linet->get(1)),false);
                    debugLogmm("bump " << linet->get(1)->get());

                } else if(linet->get(0)->Compare("disp",4)) { // disposition scalar map
                    debugLogmm("disp " << linet->get(1)->get());

                } else if(linet->get(0)->Compare("decal",5)) { // Decal??? map (how colors are blended)
                    debugLogmm("decal " << linet->get(1)->get());

                } else if(linet->get(0)->Compare("refl",4)) { // Mirror intensity map
                    //MirrorMap.openImage(*(linet->get(1)),false);
                    debugLogmm("refl " << linet->get(1)->get());
                } else if(linet->get(0)->Compare("transparency",12)) { // Alpha intensity map
                    //AlphaMap.openImage(*(linet->get(1)),false);
                    debugLogmm("transparency " << linet->get(1)->get());
                }
            }
            //delete linet;
        }
    }

    fileClose(filex);

    return materials;
}

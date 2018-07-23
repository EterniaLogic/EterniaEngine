#include "Model.h"



void Model::loadFromObj(char* objFile) {
    LinkedList<vertex> vlist; // Vector list
    LinkedList<vertex> vlistn; // Vector list
    LinkedList<vertex> vlistt; // Vector list
    LinkedList<ModelMaterial>* matlist; // Material list, loaded later down
    int i=0;
    CharString readx;
    int vf,vt,vn, l;
    LinkedList<CharString> *linet, *txsplit;
    ifstream filex;
    this->loadedloc.set(objFile);
    
    cout << "Loading Model: " << objFile << endl;
    cout.flush();
    fileOpen(filex, objFile);

    

    ModelFragment* fragment;
    CharString* hash = new CharString("#\0",1);
    CharString* slash = new CharString("//\0",2);
    CharString* bracket = new CharString("[\0",1);
    
    // Read lines from the file
    //out << "bb" << endl; cout.flush();
    while((readx = fileGetLine(filex)).getSize() > -1) {
        try{
            // Test for line comments
            if(!readx.startsWith(*hash) && !readx.startsWith(*slash) && !readx.startsWith(*bracket)) {
                
                linet = readx.split(' ', '|');
                //list2
                // test if line is a valid OBJ value
                linet->freeze();
                //debugLogm("Line: " << readx.get() << " - " << linet->size() << "/" << linet->frozenlen << "  " << linet->top()->data);// << "=" << linet->get(0)<<"="<<linet->get(1)<<"="<<linet->frozen[0]);
                
                if(linet->size() > 1) {
                    if(linet->get(0)->Compare("o",1)) { // Vertex Normal
                        debugLogm("o " << linet->get(1)->get());

                        if(fragment != 0x0) {
                            // reset lists
                            vlist.clear();
                            vlistn.clear();
                            vlistt.clear();
                        }
                        fragment = (ModelFragment*)malloc(sizeof(ModelFragment));
                        fragment->name = *linet->get(1);
                        this->fragments.add(fragment);
                        //cout << "MODEL add fragment" << endl;
                    } else if(linet->get(0)->Compare("vn",2)) { // Vertex Normal
                        debugLogm("vn" << " " << linet->get(1)->getFloat() << " " << linet->get(2)->getFloat() << " " << linet->get(3)->getFloat());

                        vlistn.add(new vertex(linet->get(1)->getFloat(),linet->get(2)->getFloat(),linet->get(3)->getFloat()));
                    } else if(linet->get(0)->Compare("vt",2)) { // Vertex Texture
                        debugLogm("vt" << " " << linet->get(1)->getFloat() << " " << linet->get(2)->getFloat());

                        vlistt.add(new vertex(linet->get(1)->getFloat(),linet->get(2)->getFloat(),0));
                    } else if(linet->get(0)->Compare("v",1)) { // Vertex
                        debugLogm("v" << " " << linet->get(1)->getFloat() << " " << linet->get(2)->getFloat() << " " << linet->get(3)->getFloat());

                        vlist.add(new vertex(linet->get(1)->getFloat(),linet->get(2)->getFloat(),linet->get(3)->getFloat()));
                    } else if(linet->get(0)->Compare("f",1)) { // define Face
                        debugLogm("f '" << linet->get(1)->get() << "' '" << linet->get(2)->get() << "' '" << linet->get(3)->get() << "' '" << linet->get(4)->get() << "'");


                        // Determine if slashes in each vertex face. (Vertex normals w/ or w//o texture)

                        // Complex vertex mapping + Texture + normals
                        for(l=0; l<linet->size(); l++) {
                            vf = vt = vn = -1;
                            if(linet->get(l+1)->contains("/")) { // vertex normals w/ texture normal
                                txsplit = linet->get(l+1)->split('/', '`');

                                // v / vt / vn   (vector coord, v texture, v normal)
                                vf = txsplit->get(0)->getInt()-1;
                                if(txsplit->get(1)->getSize() > 0) {
                                    vt = txsplit->get(1)->getInt()-1;
                                } else vt = -1;
                                
                                if(txsplit->size() == 3 && txsplit->get(2)->getSize() > 0) {
                                    vn = txsplit->get(2)->getInt()-1;
                                } else vn = -1;
                            } else { // Simple verticies mapping
                                vf = linet->get(l+1)->getInt()-1;

                                vt = vn = -1;
                            }


                            // set values for face
                            if(vlist.size() <= vf+1) {
                                fragment->addVertex(vlist.get(vf));
                                if(vt >= 0)
                                    fragment->textureCoordinates.add(vlistt.get(vt));
                                if(vn >= 0)
                                    fragment->normals.add(vlistn.get(vn));
                            }
                        }
                    } else if(linet->get(0)->Compare("mtllib",6)) { // Material lib location
                        string s1 = objFile;
                        s1 = s1.substr(0, s1.find_last_of("\\/"))+"/"+linet->get(1)->get();
                        debugLogm("mtllib " << s1);
                        matlist = ModelMaterial::loadFromMtl(CharString(s1.c_str(), s1.length()));
                    } else if(linet->get(0)->Compare("usemtl",6)) { // Select material name
                        debugLogm("usemtl " << linet->get(1)->get());
                        fragment->matname = *linet->get(1);
                    }
                }
                
                delete linet; // clean up
            }
        }catch(int e){
            cout << "Model_loadFromObj error caught: " << e << endl; cout.flush();
        }
    }

    debugLogm("Dynamic link materials");
    // Link materials to the ModelFragments.
    this->fragments.freeze();
    matlist->freeze();
    for(int i=0; i<this->fragments.frozenlen; i++) {
        for(int j=0; j<matlist->size(); j++) {
            cout << "ModelMat: " << this->fragments.frozen[i]->matname.get() << " - " << matlist->frozen[j]->name.get() << endl;
            if(this->fragments.frozen[i]->matname.Compare(matlist->frozen[j]->name)) {
                // This model's material name compares with this material
                this->fragments.frozen[i]->material = matlist->frozen[j];

                break; // get out of this mat loop
            }
        }
    }

    fileClose(filex);
}


// Obj Schema:
/*       # www.blender.org                  << Comment line
         mtllib untitled.mtl                << material file relative to object file
         o Cube
         v 1.000000 -1.000000 -1.000000       Vertex 1
         v 1.000000 -1.000000 1.000000        Vertex 2
         v -1.000000 -1.000000 1.000000       Vertex 3
         v -1.000000 -1.000000 -1.000000      Vertex 4
         v 1.000000 1.000000 -0.999999        Vertex 5
         v 0.999999 1.000000 1.000001         Vertex 6
         v -1.000000 1.000000 1.000000        Vertex 7
         v -1.000000 1.000000 -1.000000       Vertex 8
         usemtl Material                     << usemtl from the mtllib
         s off
         f 1 2 3 4                           << Face for vertex 1, 2, 3 and 4
         f 5 8 7 6                           << Face for vertex 5, 8, 7 and 6
         f 1 5 6 2
         f 2 6 7 3
         f 3 7 8 4
         f 5 1 4 8


         vt 0.500 1 [0]                      << Texture coordiante
 */

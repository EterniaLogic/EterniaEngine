#ifndef SCRIPTPROVIDER_H_
#define SCRIPTPROVIDER_H_
#include "Lua.h"
#include "Java.h"
#include "Javascript.h"
#include "Python.h"
#include "CSharp.h"

#include "../EncryptedData/Encryptor.h"

// Interfaces with external files and uses them to perform simple-to-complex high-end operations.
class ScriptProvider {
    public:
        void writeEncryptedScript(CharString loc, CharString data); // Write an encrypted script
        CharString readEncryptedScript(CharString loc);
        
        // Event providers
};


#endif

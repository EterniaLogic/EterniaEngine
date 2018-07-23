#ifndef genExports_h
#define genExports_h

#include <Eternia/Data/CharString.h>
#include "../EncryptedData/Encryptor.h"

// Generate files from the engine. This includes filestructures and the package systems.
// [Projectname] (.exe / .dmg)
// data.dat <--Encrypted data file

class GenerateExports {

    public:
        void generateFolderStructure(CharString* path); // Create folder structure
        void generateExecutables(CharString* path);     // Build (Or copy) Executables for each platform
        void generatePatchers(CharString* path);            // Generate the Patchers that enable updating
        void generateSettings(CharString* path);            // Generate configurations that enable the executable to run (And to decrypt files)
        void generateScripts(CharString* path);             // Encrypt and optimize scripts
        void generateAssets(CharString* path);          // Encrypt and optimize assets (Sounds, Models, Art, Textures)
        void generateLocalizations(CharString* path);       // Generate Localizations from known text (Google API?)
        void generatePackages(CharString* path);            // Generate Packages for all platforms (RPM, Debian, Windows, ect)
};

#endif

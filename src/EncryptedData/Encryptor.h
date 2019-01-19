#ifndef ENCRYPTOR_H_
#define ENCRYPTOR_H_

#include <Eternia/Data/CharString.h>
#include <ctime>

#include "EFile.h"
#include "EFolder.h"


class Encryptor {
public:
	Encryptor(CharString loc);

	// loc = virtual location
	void addFile(CharString loc, EFile* file); // automatic override
	EFile* getFile(CharString loc);

	void addFolder(CharString loc, EFolder* folder);

	void deleteFile(CharString loc, CharString deletekey); // deletes file (requires a key)
	void deleteFolder(CharString loc, CharString deletekey); // deletes contents (requires a key)

private:
	int version;
	void* key;
};


#endif

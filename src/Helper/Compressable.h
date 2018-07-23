#ifndef COMPRESSABLE_H
#define COMPRESSABLE_H

//#include <boost/iostream.hpp>
#include <Eternia/Data/CharString.h>
#include <zlib.h>

#include <iostream>

#if defined(MSDOS) || defined(OS2) || defined(WIN32) || defined(__CYGWIN__)
#  include <fcntl.h>
#  include <io.h>
#  define SET_BINARY_MODE(file) setmode(fileno(file), O_BINARY)
#else
#  define SET_BINARY_MODE(file)
#endif

enum COMPRESS_TYPE {GZIP};

// this class is a helper class for the compression thread
class Compressable {
    public:
        Compressable(COMPRESS_TYPE type, CharString* data, bool compress, int level);

        void doCompress();
        bool isDone();

        COMPRESS_TYPE type;
        CharString* data;
        bool done;
        bool compress; // compress? or decompress?
        int level;
};

#endif

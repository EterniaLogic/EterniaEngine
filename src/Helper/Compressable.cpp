#include "Compressable.h"

using namespace std;

void zlib_compress(CharString* data, int level) {
    char* out = (char*)malloc(data->getSize());
    int ret, flush;
    unsigned have;
    z_stream stream;
    stream.zalloc = Z_NULL;
    stream.zfree = Z_NULL;
    stream.opaque = Z_NULL;
    ret = deflateInit(&stream, level);
    if(ret != Z_OK) cout << "deflate fail" << endl;

    stream.avail_in = data->getSize();
    stream.next_in = (unsigned char*)data->get();
    stream.avail_out = data->getSize();
    stream.next_out = (unsigned char*)out;
    deflate(&stream, flush);

    data->set(out);
}
void zlib_decompress(CharString* data) {

}

Compressable::Compressable(COMPRESS_TYPE t, CharString* dat, bool compress, int level) {
    this->type = t;
    this->data = dat;
    this->done = false;
    this->compress = compress;
    this->level = level;
}

void Compressable::doCompress() {
    switch(type) {
        case GZIP:
            // perform a gzip operation here
            if(compress) {
                zlib_compress(data, level);
            } else {
                zlib_decompress(data);
            }
            break;
    }
}

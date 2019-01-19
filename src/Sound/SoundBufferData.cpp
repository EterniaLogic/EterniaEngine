#include "SoundBufferData.h"

SoundBufferData::SoundBufferData(CharString file) {
    data = alutLoadMemoryFromFile ((const char *)file.get(), &format, &size, &freq);

    ALenum e = alutGetError();
    if(e != ALUT_ERROR_NO_ERROR) {
        cout << "Loading sound buffer error: " << alutGetErrorString(e) << endl;
    }
}

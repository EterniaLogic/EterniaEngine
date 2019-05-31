#include "SoundMic.h"

SoundMic::SoundMic() {
    alGetError();
    device = alcCaptureOpenDevice(0x0, SRATE, AL_FORMAT_STEREO16, SSIZE);
    if (alGetError() != AL_NO_ERROR) {
        return;
    }
    alcCaptureStart(device);
}

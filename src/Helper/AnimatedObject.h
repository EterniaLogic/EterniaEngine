#ifndef ANIMATED_OBJECT_H_
#define ANIMATED_OBJECT_H_

class AnimatedObject{
public:
    AnimatedObject();
    virtual ~AnimatedObject();
    // Possibly also implement frame-skipping?
    int frameFps, maxFrames, currentFrame;
    long timepassed;
    
    virtual void animateTick(long timeMillis); // time to go for in milliseconds. (FPS, ect. is figured out in implementations)
};

#endif

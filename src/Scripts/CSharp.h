#ifndef CSHARP_H_
#define CSHARP_H_

// Linux/Mac requires libmono, Microsoft requires C# runtime/compiler

// CSharp is a "Microsoft Language" which is very high-end.
#include "API/API.h"
#include "ScriptProvider.h"
#include <Eternia/API/APIMod.h>

class CSharpS : public APIMod{
    
    void stop(); // stop the Script
    void start(); // start the Script
};

#endif

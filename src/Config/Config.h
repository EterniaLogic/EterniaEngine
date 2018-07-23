#ifndef CONFIG_H_
#define CONFIG_H_

#include <Eternia/Data/HashMap.hpp>
#include <Eternia/Data/CharString.h>
#include <Eternia/Parsing/SimpleParser.h>
#include <unordered_map>

class Config {
    public:
        Config();

        void Load(CharString* fileLoc);
        //HashMap<CharString>* items; // items that are loaded
        unordered_map<std::string,CharString> items;

};

#endif

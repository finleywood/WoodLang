#include "../include/util.h"

char* read_ascii_file(const char* path) {
    FILE* fp = fopen(path, "r");
    if(!fp){
        return NULL;
    }
    fseek(fp, 0, SEEK_END);
    int size = ftell(fp);
    fseek(fp, 0, SEEK_SET);
    char* buf = (char*) malloc(sizeof(char) * (size + 1));
    fread(buf, sizeof(char), size, fp);
    fclose(fp);
    buf[size] = '\0';
    return buf;
}
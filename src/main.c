#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../include/util.h"

int main(int argc, char** argv)
{   
    if(argc < 3){
        printf("Invalid number of arguments %d\n", argc);
        return 1;
    }
    else if(strcmp(argv[1], "read") == 0){
        const char* path = argv[2];
        char* source = read_ascii_file(path);
        if(source != NULL){
            printf("%s\n", source);
        }
        else{
            printf("Null source");
        }
        free(source);
    }
    return 0;
}
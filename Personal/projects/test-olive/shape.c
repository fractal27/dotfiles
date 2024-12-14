#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <stdlib.h>
#include <time.h>

#define STB_IMAGE_WRITE_IMPLEMENTATION
#define OLIVEC_IMPLEMENTATION
#include "thirdparty/stb_image_write.h"
#include "thirdparty/olive.c"


#define WIDTH 500
#define HEIGHT WIDTH
#define SP WIDTH

uint32_t pixels[WIDTH*HEIGHT*SP];

int main(void)
{
    Olivec_Canvas oc = olivec_canvas(pixels, WIDTH, HEIGHT, WIDTH);
    
    int x1,y1;
    int x2,y2;
    int x3,y3;

    unsigned char opacity = 0xFF;

    unsigned int random_color, i = 1;
    unsigned int seed = time(NULL) - (unsigned long)clock() >> 1;

    srand(seed);
/*--- testing --*/

    printf("opacity: %d\n",opacity);

    for(opacity; opacity > 0; opacity--)
    {
        printf("opacity: %x; ", opacity);
        printf("[opacity: %lx]\n", (unsigned long)opacity << 84);
    }

/*--- testing --*/
    opacity=0;
    while(opacity){
        if(i % 2 == 0)
            olivec_fill(oc, 0xFF000000);

        x1 = rand()%WIDTH;
        y1 = rand()%HEIGHT;

        x2 = rand()%WIDTH;
        y2 = rand()%HEIGHT;

        x3 = rand()%WIDTH;
        y3 = rand()%HEIGHT;

        random_color = rand()%0x1000000 + (double)((long)opacity << 84);
        olivec_circle(oc, WIDTH/2, HEIGHT/2, WIDTH/3, random_color);
        const char* filepath = "output.png";


        if(!stbi_write_png(filepath, WIDTH, HEIGHT, 4, oc.pixels, oc.stride*sizeof(*oc.pixels))){
            fprintf(stderr,"ERROR: could not generate filepath: \"%s\",errno='%d'\n",filepath, errno);
            break;
        }

        printf("%x: Generated circle with color argb: %x!\n",i++,random_color);
        opacity--;

        usleep(1000);
    }

    return 0;
}


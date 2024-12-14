#include <GL/gl.h>
#include <GLFW/glfw3.h>
#include <leif/leif.h>

GLFWwindow* window;

void todo_init_window(){
    window = glfwCreateWindow(1280, 720, "Todo", NULL, NULL);
    glfwMakeContextCurrent(window);
    lf_init_glfw(1280, 720, window);
}


int main(){
    todo_init_window();
    while(!glfwWindowShouldClose(window)){
        glClear(GL_COLOR_BUFFER_BIT);
        glClearColor(0.1f,0.1f,0.1f,0.1f);

        lf_begin();
        lf_text("Hello world!");
        lf_end();
    }
    glfwDestroyWindow(window);
    glfwTerminate();
}


//
// COMP 371 Labs Framework
//
// Created by Nicolas Bergeron on 20/06/2019.
//

#include <iostream>
#include <cstring>
#include <list>

#define GLEW_STATIC 1   // This allows linking with Static Library on Windows, without DLL
#include <GL/glew.h>    // Include GLEW - OpenGL Extension Wrangler

#include <GLFW/glfw3.h> // cross-platform interface for creating a graphical context,
                        // initializing OpenGL and binding inputs

#include <glm/glm.hpp>  // GLM is an optimized math library with syntax to similar to OpenGL Shading Language
#include <glm/gtc/matrix_transform.hpp> // include this to create transformation matrices
#include <glm/common.hpp>


using namespace glm;
using namespace std;

const char* getVertexShaderSource()
{
    // For now, you use a string for your shader code, in the assignment, shaders will be stored in .glsl files
    return
                "#version 330 core\n"
                "layout (location = 0) in vec3 aPos;"
                "layout (location = 1) in vec3 aColor;"
                ""
                "uniform mat4 worldMatrix;"
                "uniform mat4 viewMatrix = mat4(1.0);"  // default value for view matrix (identity)
                "uniform mat4 projectionMatrix = mat4(1.0);"
                ""
                "out vec3 vertexColor;"
                "void main()"
                "{"
                "   vertexColor = aColor;"
                "   mat4 modelViewProjection = projectionMatrix * viewMatrix * worldMatrix;"
                "   gl_Position = modelViewProjection * vec4(aPos.x, aPos.y, aPos.z, 1.0);"
                "}";
}


const char* getFragmentShaderSource()
{
    return
                "#version 330 core\n"
                "in vec3 vertexColor;"
                "out vec4 FragColor;"
                "void main()"
                "{"
                "   FragColor = vec4(vertexColor.r, vertexColor.g, vertexColor.b, 1.0f);"
                "}";
}


int compileAndLinkShaders()
{
    // compile and link shader program
    // return shader program id
    // ------------------------------------

    // vertex shader
    int vertexShader = glCreateShader(GL_VERTEX_SHADER);
    const char* vertexShaderSource = getVertexShaderSource();
    glShaderSource(vertexShader, 1, &vertexShaderSource, NULL);
    glCompileShader(vertexShader);
    
    // check for shader compile errors
    int success;
    char infoLog[512];
    glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &success);
    if (!success)
    {
        glGetShaderInfoLog(vertexShader, 512, NULL, infoLog);
        std::cerr << "ERROR::SHADER::VERTEX::COMPILATION_FAILED\n" << infoLog << std::endl;
    }
    
    // fragment shader
    int fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
    const char* fragmentShaderSource = getFragmentShaderSource();
    glShaderSource(fragmentShader, 1, &fragmentShaderSource, NULL);
    glCompileShader(fragmentShader);
    
    // check for shader compile errors
    glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &success);
    if (!success)
    {
        glGetShaderInfoLog(fragmentShader, 512, NULL, infoLog);
        std::cerr << "ERROR::SHADER::FRAGMENT::COMPILATION_FAILED\n" << infoLog << std::endl;
    }
    
    // link shaders
    int shaderProgram = glCreateProgram();
    glAttachShader(shaderProgram, vertexShader);
    glAttachShader(shaderProgram, fragmentShader);
    glLinkProgram(shaderProgram);
    
    // check for linking errors
    glGetProgramiv(shaderProgram, GL_LINK_STATUS, &success);
    if (!success) {
        glGetProgramInfoLog(shaderProgram, 512, NULL, infoLog);
        std::cerr << "ERROR::SHADER::PROGRAM::LINKING_FAILED\n" << infoLog << std::endl;
    }
    
    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);
    
    return shaderProgram;
}


int createVertexBufferObject(bool multiColorFlag, vec3 colorVect)
{
    vec3 whiteVect = vec3(1.0f, 1.0f, 1.0f);
    vec3 redVect = vec3(1.0f, 0.0f, 0.0f);
    vec3 greenVect = vec3(0.0f, 1.0f, 0.0f);
    vec3 blueVect = vec3(0.0f, 0.0f, 1.0f);

    vec3 yellowVect = vec3(1.0f, 1.0f, 0.0f);
    vec3 lightBlueVect = vec3(0.0f, 1.0f, 1.0f);
    vec3 pinkVect = vec3(1.0f, 0.0f, 1.0f);

    // Cube model
    vec3 specifiedColorVertexArray[] = {  // position,                            color
        vec3(-0.5f,-0.5f,-0.5f), colorVect,
        vec3(-0.5f,-0.5f, 0.5f), colorVect,
        vec3(-0.5f, 0.5f, 0.5f), colorVect,
        
        vec3(-0.5f,-0.5f,-0.5f), colorVect,
        vec3(-0.5f, 0.5f, 0.5f), colorVect,
        vec3(-0.5f, 0.5f,-0.5f), colorVect,
        
        vec3( 0.5f, 0.5f,-0.5f), colorVect,
        vec3(-0.5f,-0.5f,-0.5f), colorVect,
        vec3(-0.5f, 0.5f,-0.5f), colorVect,
        
        vec3( 0.5f, 0.5f,-0.5f), colorVect,
        vec3( 0.5f,-0.5f,-0.5f), colorVect,
        vec3(-0.5f,-0.5f,-0.5f), colorVect,
        
        vec3( 0.5f,-0.5f, 0.5f), colorVect,
        vec3(-0.5f,-0.5f,-0.5f), colorVect,
        vec3( 0.5f,-0.5f,-0.5f), colorVect,
        
        vec3( 0.5f,-0.5f, 0.5f), colorVect,
        vec3(-0.5f,-0.5f, 0.5f), colorVect,
        vec3(-0.5f,-0.5f,-0.5f), colorVect,
        
        vec3(-0.5f, 0.5f, 0.5f), colorVect,
        vec3(-0.5f,-0.5f, 0.5f), colorVect,
        vec3( 0.5f,-0.5f, 0.5f), colorVect,
        
        vec3( 0.5f, 0.5f, 0.5f), colorVect,
        vec3(-0.5f, 0.5f, 0.5f), colorVect,
        vec3( 0.5f,-0.5f, 0.5f), colorVect,
        
        vec3( 0.5f, 0.5f, 0.5f), colorVect,
        vec3( 0.5f,-0.5f,-0.5f), colorVect,
        vec3( 0.5f, 0.5f,-0.5f), colorVect,
        
        vec3( 0.5f,-0.5f,-0.5f), colorVect,
        vec3( 0.5f, 0.5f, 0.5f), colorVect,
        vec3( 0.5f,-0.5f, 0.5f), colorVect,
        
        vec3( 0.5f, 0.5f, 0.5f), colorVect,
        vec3( 0.5f, 0.5f,-0.5f), colorVect,
        vec3(-0.5f, 0.5f,-0.5f), colorVect,
        
        vec3( 0.5f, 0.5f, 0.5f), colorVect,
        vec3(-0.5f, 0.5f,-0.5f), colorVect,
        vec3(-0.5f, 0.5f, 0.5f), colorVect
    };

    vec3 colorVertexArray[] = {  // position,                            color
        vec3(-0.5f,-0.5f,-0.5f), redVect, //left - red
        vec3(-0.5f,-0.5f, 0.5f), redVect,
        vec3(-0.5f, 0.5f, 0.5f), redVect,
        
        vec3(-0.5f,-0.5f,-0.5f), redVect,
        vec3(-0.5f, 0.5f, 0.5f), redVect,
        vec3(-0.5f, 0.5f,-0.5f), redVect,
        
        vec3( 0.5f, 0.5f,-0.5f), blueVect,
        vec3(-0.5f,-0.5f,-0.5f), blueVect,
        vec3(-0.5f, 0.5f,-0.5f), blueVect,
        
        vec3( 0.5f, 0.5f,-0.5f), blueVect,
        vec3( 0.5f,-0.5f,-0.5f), blueVect,
        vec3(-0.5f,-0.5f,-0.5f), blueVect,
        
        vec3( 0.5f,-0.5f, 0.5f), greenVect, 
        vec3(-0.5f,-0.5f,-0.5f), greenVect, 
        vec3( 0.5f,-0.5f,-0.5f), greenVect, 
        
        vec3( 0.5f,-0.5f, 0.5f), greenVect, 
        vec3(-0.5f,-0.5f, 0.5f), greenVect, 
        vec3(-0.5f,-0.5f,-0.5f), greenVect, 
        
        vec3(-0.5f, 0.5f, 0.5f), yellowVect, 
        vec3(-0.5f,-0.5f, 0.5f), yellowVect, 
        vec3( 0.5f,-0.5f, 0.5f), yellowVect, 
        
        vec3( 0.5f, 0.5f, 0.5f), yellowVect, 
        vec3(-0.5f, 0.5f, 0.5f), yellowVect, 
        vec3( 0.5f,-0.5f, 0.5f), yellowVect, 
        
        vec3( 0.5f, 0.5f, 0.5f), pinkVect,
        vec3( 0.5f,-0.5f,-0.5f), pinkVect,
        vec3( 0.5f, 0.5f,-0.5f), pinkVect,
        
        vec3( 0.5f,-0.5f,-0.5f), pinkVect,
        vec3( 0.5f, 0.5f, 0.5f), pinkVect,
        vec3( 0.5f,-0.5f, 0.5f), pinkVect,
        
        vec3( 0.5f, 0.5f, 0.5f), lightBlueVect,
        vec3( 0.5f, 0.5f,-0.5f), lightBlueVect,
        vec3(-0.5f, 0.5f,-0.5f), lightBlueVect,
        
        vec3( 0.5f, 0.5f, 0.5f), lightBlueVect,
        vec3(-0.5f, 0.5f,-0.5f), lightBlueVect,
        vec3(-0.5f, 0.5f, 0.5f), lightBlueVect
    };

    vec3 vertexArray[72] = {};
    if(multiColorFlag){
        std::memcpy(vertexArray, colorVertexArray, sizeof(colorVertexArray));
    }
    else{
        std::memcpy(vertexArray, specifiedColorVertexArray, sizeof(specifiedColorVertexArray));
    }
    
    // Create a vertex array
    GLuint vertexArrayObject;
    glGenVertexArrays(1, &vertexArrayObject);
    glBindVertexArray(vertexArrayObject);
    
    
    // Upload Vertex Buffer to the GPU, keep a reference to it (vertexBufferObject)
    GLuint vertexBufferObject;
    glGenBuffers(1, &vertexBufferObject);
    glBindBuffer(GL_ARRAY_BUFFER, vertexBufferObject);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertexArray), vertexArray, GL_STATIC_DRAW);

    glVertexAttribPointer(0,                   // attribute 0 matches aPos in Vertex Shader
                          3,                   // size
                          GL_FLOAT,            // type
                          GL_FALSE,            // normalized?
                          2*sizeof(vec3), // stride - each vertex contain 2 vec3 (position, color)
                          (void*)0             // array buffer offset
                          );
    glEnableVertexAttribArray(0);


    glVertexAttribPointer(1,                            // attribute 1 matches aColor in Vertex Shader
                          3,
                          GL_FLOAT,
                          GL_FALSE,
                          2*sizeof(vec3),
                          (void*)sizeof(vec3)      // color is offseted a vec3 (comes after position)
                          );
    glEnableVertexAttribArray(1);

    
    return vertexBufferObject;
}

void seven_seg_display(GLuint worldMatrixLocation, int segFlags[7], int x, int y, int z){

    float width = 0.1f;
    float depth = 0.1f;

    float gridUnit = 0.2f;

    float height = gridUnit * 3;
    
    if(segFlags[0] == 1){
        // a
        mat4 pillarWorldMatrix = translate(mat4(1.0f), vec3(0.0f, height * 2 , 0.0f)) * rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(0.0f, 0.0f, 1.0f)) * scale(mat4(1.0f), vec3(width, height, depth));
        pillarWorldMatrix = translate(mat4(1.0f), vec3((gridUnit * x), (gridUnit * y), (gridUnit * z))) * pillarWorldMatrix;
        glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &pillarWorldMatrix[0][0]);
        glDrawArrays(GL_TRIANGLES, 0, 36);
    }

    if(segFlags[1] == 1){
        // b
        mat4 pillarWorldMatrix = translate(mat4(1.0f), vec3(height/2, height + (height/2), 0.0f))  * scale(mat4(1.0f), vec3(width, height, depth));
        pillarWorldMatrix = translate(mat4(1.0f), vec3((gridUnit * x), (gridUnit * y), (gridUnit * z))) * pillarWorldMatrix;
        glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &pillarWorldMatrix[0][0]);
        glDrawArrays(GL_TRIANGLES, 0, 36);
    }

    if(segFlags[2] == 1){
        // c
        mat4 pillarWorldMatrix = translate(mat4(1.0f), vec3(height/2, height/2, 0.0f))  * scale(mat4(1.0f), vec3(width, height, depth));
        pillarWorldMatrix = translate(mat4(1.0f), vec3((gridUnit * x), (gridUnit * y), (gridUnit * z))) * pillarWorldMatrix;
        glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &pillarWorldMatrix[0][0]);
        glDrawArrays(GL_TRIANGLES, 0, 36);
    }

    if(segFlags[3] == 1){
        // d
        mat4 pillarWorldMatrix = translate(mat4(1.0f), vec3(0.0f, 0.0f, 0.0f)) * rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(0.0f, 0.0f, 1.0f)) * scale(mat4(1.0f), vec3(width, height, depth));
        pillarWorldMatrix = translate(mat4(1.0f), vec3((gridUnit * x), (gridUnit * y), (gridUnit * z))) * pillarWorldMatrix;
        glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &pillarWorldMatrix[0][0]);
        glDrawArrays(GL_TRIANGLES, 0, 36);
    }

    if(segFlags[4] == 1){
        // e
        mat4 pillarWorldMatrix = translate(mat4(1.0f), vec3(- height/2, height/2, 0.0f))  * scale(mat4(1.0f), vec3(width, height, depth));
        pillarWorldMatrix = translate(mat4(1.0f), vec3((gridUnit * x), (gridUnit * y), (gridUnit * z))) * pillarWorldMatrix;
        glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &pillarWorldMatrix[0][0]);
        glDrawArrays(GL_TRIANGLES, 0, 36);
    }

    if(segFlags[5] == 1){
        // f
        mat4 pillarWorldMatrix = translate(mat4(1.0f), vec3(- height/2, height + (height/2), 0.0f))  * scale(mat4(1.0f), vec3(width, height, depth));
        pillarWorldMatrix = translate(mat4(1.0f), vec3((gridUnit * x), (gridUnit * y), (gridUnit * z))) * pillarWorldMatrix;
        glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &pillarWorldMatrix[0][0]);
        glDrawArrays(GL_TRIANGLES, 0, 36);
    }

    if(segFlags[6] == 1){
        // g
        mat4 pillarWorldMatrix = translate(mat4(1.0f), vec3(0.0f, height, 0.0f)) * rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(0.0f, 0.0f, 1.0f)) * scale(mat4(1.0f), vec3(width, height, depth));
        pillarWorldMatrix = translate(mat4(1.0f), vec3((gridUnit * x), (gridUnit * y), (gridUnit * z))) * pillarWorldMatrix;
        glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &pillarWorldMatrix[0][0]);
        glDrawArrays(GL_TRIANGLES, 0, 36);
    }
}


int main(int argc, char*argv[])
{
    // Initialize GLFW and OpenGL version
    glfwInit();
    
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);

    // Create Window and rendering context using GLFW, resolution is 800x600
    GLFWwindow* window = glfwCreateWindow(800, 600, "Comp371 - Lab 03", NULL, NULL);
    if (window == NULL)
    {
        std::cerr << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);

    // @TODO 3 - Disable mouse cursor
    // ...
    
    // Initialize GLEW
    glewExperimental = true; // Needed for core profile
    if (glewInit() != GLEW_OK) {
        std::cerr << "Failed to create GLEW" << std::endl;
        glfwTerminate();
        return -1;
    }

    // Black background
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    
    // Compile and link shaders here ...
    int shaderProgram = compileAndLinkShaders();
    
    // We can set the shader once, since we have only one
    glUseProgram(shaderProgram);

    
    // Camera parameters for view transform
    vec3 cameraPosition(0.6f,1.0f,10.0f);
    vec3 cameraLookAt(0.0f, 0.0f, -1.0f);
    vec3 cameraUp(0.0f, 1.0f, 0.0f);
    
    // Other camera parameters
    float cameraSpeed = 1.0f;
    float cameraFastSpeed = 5 * cameraSpeed;
    float cameraHorizontalAngle = 90.0f;
    float cameraVerticalAngle = 0.0f;
    bool  cameraFirstPerson = true; // press 1 or 2 to toggle this variable

    // Spinning cube at camera position
    float spinningCubeAngle = 0.0f;
    
    // Set projection matrix for shader, this won't change
    mat4 projectionMatrix = glm::perspective(70.0f,            // field of view in degrees
                                             800.0f / 600.0f,  // aspect ratio
                                             0.01f, 100.0f);   // near and far (near > 0)
    
    GLuint projectionMatrixLocation = glGetUniformLocation(shaderProgram, "projectionMatrix");
    glUniformMatrix4fv(projectionMatrixLocation, 1, GL_FALSE, &projectionMatrix[0][0]);

    // Set initial view matrix
    mat4 viewMatrix = lookAt(cameraPosition,  // eye
                             cameraPosition + cameraLookAt,  // center
                             cameraUp ); // up
    
    GLuint viewMatrixLocation = glGetUniformLocation(shaderProgram, "viewMatrix");
    glUniformMatrix4fv(viewMatrixLocation, 1, GL_FALSE, &viewMatrix[0][0]);
    
    
    // Define and upload geometry to the GPU here ...
    //int w_vbo = createVertexBufferObject(false);
    
    // For frame time
    float lastFrameTime = glfwGetTime();
    int lastMouseLeftState = GLFW_RELEASE;
    double lastMousePosX, lastMousePosY;
    glfwGetCursorPos(window, &lastMousePosX, &lastMousePosY);
    
    // Other OpenGL states to set once
    // Enable Backface culling
    glEnable(GL_CULL_FACE);
    
    // @TODO 1 - Enable Depth Test
    glEnable(GL_DEPTH_TEST);
    
    
    // Container for projectiles to be implemented in tutorial
    //list<Projectile> projectileList;
    
    
    // Entering Main Loop
    while(!glfwWindowShouldClose(window))
    {
        // Frame time calculation
        float dt = glfwGetTime() - lastFrameTime;
        lastFrameTime += dt;

        // Each frame, reset color of each pixel to glClearColor

        // @TODO 1 - Clear Depth Buffer Bit as well
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        glClear(GL_COLOR_BUFFER_BIT);
        
        // Draw geometry
        vec3 whiteVect = vec3(1.0f, 1.0f, 1.0f);
        int w_vbo = createVertexBufferObject(false, whiteVect);
        glBindBuffer(GL_ARRAY_BUFFER, w_vbo); // FIXME -> not sure if this is good

        // Draw grid
        float gridUnit = 0.2f;
        int gridSize = 128;
        GLuint worldMatrixLocation = glGetUniformLocation(shaderProgram, "worldMatrix");
        for (int i=0; i<(gridSize/2); ++i)
        {
            mat4 groundWorldMatrix = translate(mat4(1.0f), vec3(0.0f + (i * gridUnit), 0.0f, 0.0f)) * scale(mat4(1.0f), vec3(0.01f, 0.01f, gridUnit * gridSize));
            glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &groundWorldMatrix[0][0]);
            glDrawArrays(GL_TRIANGLES, 0, 36); // 36 vertices, starting at index 0

            // turn 90
            groundWorldMatrix = translate(mat4(1.0f), vec3(0.0f, 0.0f, 0.0f + (i * gridUnit))) * rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(0.0f, 1.0f, 0.0f)) * scale(mat4(1.0f), vec3(0.01f, 0.01f, gridUnit * gridSize));
            glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &groundWorldMatrix[0][0]);
            glDrawArrays(GL_TRIANGLES, 0, 36); // 36 vertices, starting at index 0
        }

        for (int i=0; i<(gridSize/2); ++i)
        {
            mat4 groundWorldMatrix = translate(mat4(1.0f), vec3(0.0f + (-i * gridUnit), 0.0f, 0.0f)) * scale(mat4(1.0f), vec3(0.01f, 0.01f, gridUnit * gridSize));
            glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &groundWorldMatrix[0][0]);
            glDrawArrays(GL_TRIANGLES, 0, 36); // 36 vertices, starting at index 0

            // turn 90
            groundWorldMatrix = translate(mat4(1.0f), vec3(0.0f, 0.0f, 0.0f + (-i * gridUnit))) * rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(0.0f, 1.0f, 0.0f)) * scale(mat4(1.0f), vec3(0.01f, 0.01f, gridUnit * gridSize));
            glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &groundWorldMatrix[0][0]);
            glDrawArrays(GL_TRIANGLES, 0, 36); // 36 vertices, starting at index 0
        }
        
        // Draw Axis
        // Draw geometry color
        float lengthAxis = gridUnit * 7;

        vec3 greenVect = vec3(0.0f, 1.0f, 0.0f);
        int vbo = createVertexBufferObject(false, greenVect);
        glBindBuffer(GL_ARRAY_BUFFER, vbo); // FIXME -> not sure if this is good
        
        mat4 yAxisMatrix = translate(mat4(1.0f), vec3(0.0f , lengthAxis/2, 0.0f)) * scale(mat4(1.0f), vec3(0.05f, lengthAxis, 0.05f));
        glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &yAxisMatrix[0][0]);
        glDrawArrays(GL_TRIANGLES, 0, 36); // 36 vertices, starting at index 0

        // Draw geometry color
        vec3 redVect = vec3(1.0f, 0.0f, 0.0f);
        vbo = createVertexBufferObject(false, redVect);
        glBindBuffer(GL_ARRAY_BUFFER, vbo); // FIXME -> not sure if this is good

        mat4 xAxisMatrix = translate(mat4(1.0f), vec3(lengthAxis/2 , 0.0f, 0.0f)) * rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(0.0f, 0.0f, 1.0f)) * scale(mat4(1.0f), vec3(0.05f, lengthAxis, 0.05f));
        glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &xAxisMatrix[0][0]);
        glDrawArrays(GL_TRIANGLES, 0, 36); // 36 vertices, starting at index 0

        // Draw geometry color
        vec3 blueVect = vec3(0.0f, 0.0f, 1.0f);
        vbo = createVertexBufferObject(false, blueVect);
        glBindBuffer(GL_ARRAY_BUFFER, vbo); // FIXME -> not sure if this is good

        mat4 zAxisMatrix = translate(mat4(1.0f), vec3(0.0f , 0.0f, lengthAxis/2)) * rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(1.0f, 0.0f, 0.0f)) * scale(mat4(1.0f), vec3(0.05f, lengthAxis, 0.05f));
        glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &zAxisMatrix[0][0]);
        glDrawArrays(GL_TRIANGLES, 0, 36); // 36 vertices, starting at index 0

        // Draw Letters and ID
        // Draw geometry color
        vec3 dummyVect = vec3(0.0f, 0.0f, 1.0f);
        vbo = createVertexBufferObject(true, dummyVect);
        glBindBuffer(GL_ARRAY_BUFFER, vbo); // FIXME -> not sure if this is good

        // Draw Letters
        int segP[] = {1,1,0,0,1,1,1};
        seven_seg_display(worldMatrixLocation, segP, 5,0,0);

        int segE[] = {1,0,0,1,1,1,1};
        seven_seg_display(worldMatrixLocation, segE, 10,0,0);

        // Draw ID
        int seg2[] = {1,1,0,1,1,0,1};
        seven_seg_display(worldMatrixLocation, seg2, 17,0,0);

        int seg8[] = {1,1,1,1,1,1,1};
        seven_seg_display(worldMatrixLocation, seg8, 22,0,0);

        //mat4 pillarWorldMatrix = translate(mat4(1.0f), vec3(0.0f, 0.0f, 0.0f)) * scale(mat4(1.0f), vec3(0.2f, 5.0f, 0.2f));
        //glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &pillarWorldMatrix[0][0]);
        //glDrawArrays(GL_TRIANGLES, 0, 36);
        
        //for (int i=0; i<1; ++i)
        //{
            //for (int j=0; j<1; ++j)
            //{
                //pillarWorldMatrix = translate(mat4(1.0f), vec3(- 100.0f + i * 10.0f, 5.0f, -100.0f + j * 10.0f)) * scale(mat4(1.0f), vec3(1.0f, 10.0f, 1.0f));
                //glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &pillarWorldMatrix[0][0]);
                //glDrawArrays(GL_TRIANGLES, 0, 36);
                
                //pillarWorldMatrix = translate(mat4(1.0f), vec3(- 100.0f + i * 10.0f, 0.55f, -100.0f + j * 10.0f)) * rotate(mat4(1.0f), radians(180.0f), vec3(0.0f, 1.0f, 0.0f)) * scale(mat4(1.0f), vec3(1.1f, 1.1f, 1.1f));
                //glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &pillarWorldMatrix[0][0]);
                //glDrawArrays(GL_TRIANGLES, 0, 36);
            //}
        //}
        
        // @TODO 3 - Update and draw projectiles
        // ...

        
        // Spinning cube at camera position
        spinningCubeAngle += 180.0f * dt;
        
        // @TODO 7 - Draw in view space for first person camera
        
        {
            // In third person view, let's draw the spinning cube in world space, like any other models
            mat4 spinningCubeWorldMatrix = translate(mat4(1.0f), cameraPosition) *
                                           rotate(mat4(1.0f), radians(spinningCubeAngle), vec3(0.0f, 1.0f, 0.0f)) *
                                           scale(mat4(1.0f), vec3(0.1f, 0.1f, 0.1f));
            
            glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &spinningCubeWorldMatrix[0][0]);
        }
        glDrawArrays(GL_TRIANGLES, 0, 36);

        
        
        // End Frame
        glfwSwapBuffers(window);
        glfwPollEvents();
        
        // Handle inputs
        if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
            glfwSetWindowShouldClose(window, true);
        
        if (glfwGetKey(window, GLFW_KEY_1) == GLFW_PRESS) // move camera down
        {
            cameraFirstPerson = true;
        }

        if (glfwGetKey(window, GLFW_KEY_2) == GLFW_PRESS) // move camera down
        {
            cameraFirstPerson = false;
        }

        
        // This was solution for Lab02 - Moving camera exercise
        // We'll change this to be a first or third person camera
        bool fastCam = glfwGetKey(window, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS || glfwGetKey(window, GLFW_KEY_RIGHT_SHIFT) == GLFW_PRESS;
        float currentCameraSpeed = (fastCam) ? cameraFastSpeed : cameraSpeed;
        
        
        // @TODO 4 - Calculate mouse motion dx and dy
        //         - Update camera horizontal and vertical angle


        // Please understand the code when you un-comment it!
        /*
        double mousePosX, mousePosY;
        glfwGetCursorPos(window, &mousePosX, &mousePosY);
        
        double dx = mousePosX - lastMousePosX;
        double dy = mousePosY - lastMousePosY;
        
        lastMousePosX = mousePosX;
        lastMousePosY = mousePosY;
        
        // Convert to spherical coordinates
        const float cameraAngularSpeed = 60.0f;
        cameraHorizontalAngle -= dx * cameraAngularSpeed * dt;
        cameraVerticalAngle   -= dy * cameraAngularSpeed * dt;
        
        // Clamp vertical angle to [-85, 85] degrees
        cameraVerticalAngle = std::max(-85.0f, std::min(85.0f, cameraVerticalAngle));
        if (cameraHorizontalAngle > 360)
        {
            cameraHorizontalAngle -= 360;
        }
        else if (cameraHorizontalAngle < -360)
        {
            cameraHorizontalAngle += 360;
        }
        
        float theta = radians(cameraHorizontalAngle);
        float phi = radians(cameraVerticalAngle);
        
        cameraLookAt = vec3(cosf(phi)*cosf(theta), sinf(phi), -cosf(phi)*sinf(theta));
        vec3 cameraSideVector = glm::cross(cameraLookAt, vec3(0.0f, 1.0f, 0.0f));
        
        glm::normalize(cameraSideVector);
         */
        
        // @TODO 5 = use camera lookat and side vectors to update positions with ASDW
        // adjust code below
        if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) // move camera to the left
        {
            cameraPosition.x -= currentCameraSpeed * dt;
        }
        
        if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) // move camera to the right
        {
            cameraPosition.x += currentCameraSpeed * dt;
        }
        
        if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS) // move camera up
        {
            cameraPosition.z += currentCameraSpeed * dt;
        }
        
        if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS) // move camera down
        {
            cameraPosition.z -= currentCameraSpeed * dt;
        }
      
        // TODO 6
        // Set the view matrix for first and third person cameras
        // - In first person, camera lookat is set like below
        // - In third person, camera position is on a sphere looking towards center
        mat4 viewMatrix = lookAt(cameraPosition, cameraPosition + cameraLookAt, cameraUp );

        GLuint viewMatrixLocation = glGetUniformLocation(shaderProgram, "viewMatrix");
        glUniformMatrix4fv(viewMatrixLocation, 1, GL_FALSE, &viewMatrix[0][0]);
        
        
        // @TODO 2 - Shoot Projectiles
        //
        // shoot projectiles on mouse left click
        // To detect onPress events, we need to check the last state and the current state to detect the state change
        // Otherwise, you would shoot many projectiles on each mouse press
        // ...


    }

    
    // Shutdown GLFW
    glfwTerminate();
    
	return 0;
}

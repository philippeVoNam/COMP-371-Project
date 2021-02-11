#include <iostream>
#include <cstring>
#include <vector>
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

// Structs.
struct LetterIDModel {
    std::vector<std::vector< mat4 >> m_letter_id_matrix;
    std::vector<std::vector< mat4 >> og_letter_id_matrix;

    // we need to apply the transform on the original matrix of the model (if use on the m_letter_id_matrix -> effect will be compounded)
    // hence why we have a og matrix
    
    // params
    float scale = 1.0f;
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
    float angle = 1.0f;

    LetterIDModel(std::vector<std::vector< mat4 >> letter_id_matrix){
        m_letter_id_matrix = letter_id_matrix;
        og_letter_id_matrix = letter_id_matrix;
    }
};

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

    // either choose the multi-color or single color cube
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

// ### DRAWING HELPER FUNCTIONS ###

// draw the given matrix
void draw_matrix(mat4 matrix, GLuint worldMatrixLocation){
    glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &matrix[0][0]);
    glDrawArrays(GL_TRIANGLES, 0, 36);
}

// draw the given list of matrix
void draw_model(std::vector< mat4 > matrixList, GLuint worldMatrixLocation){
    // Declaring iterator to a vector 
    std::vector< mat4 >::iterator ptr; 
      
    // Displaying vector elements using begin() and end() 
    for (ptr = matrixList.begin(); ptr < matrixList.end(); ptr++){
        draw_matrix(*ptr, worldMatrixLocation);
    }
}

// draw the given list of list of matrix
void draw_models(std::vector< std::vector< mat4 >> matrixLists, GLuint worldMatrixLocation){
    // Declaring iterator to a vector 
    std::vector<std::vector< mat4 >>::iterator ptr; 
      
    // Displaying vector elements using begin() and end() 
    for (ptr = matrixLists.begin(); ptr < matrixLists.end(); ptr++){
        draw_model(*ptr, worldMatrixLocation);
    }
}

// ### TRANSFORM HELPER FUNCTIONS ###

// apply the transform to the given list of matrix
std::vector< mat4 > apply_transform_2_model(std::vector< mat4 > matrixList, mat4 matrixTransform){
    // Declaring iterator to a vector 
    std::vector< mat4 >::iterator ptr; 

    std::vector< mat4 > matrixListTransformed;

    // Displaying vector elements using begin() and end() 
    for (ptr = matrixList.begin(); ptr < matrixList.end(); ptr++){
        mat4 matrixTransformed = matrixTransform * *ptr;
        matrixListTransformed.push_back(matrixTransformed);
    }

    return matrixListTransformed;
}

// apply the transform to the given list of list of matrix
std::vector< std::vector< mat4 > > apply_transform_2_models(std::vector< std::vector< mat4 > > matrixLists, mat4 matrixTransform){
    // Declaring iterator to a vector 
    std::vector<std::vector< mat4 >>::iterator ptr; 

    std::vector< std::vector< mat4 > > matrixListsTransformed;

    // Displaying vector elements using begin() and end() 
    for (ptr = matrixLists.begin(); ptr < matrixLists.end(); ptr++){
        std::vector<mat4> matrixListTransformed = apply_transform_2_model(*ptr, matrixTransform);
        matrixListsTransformed.push_back(matrixListTransformed);
    }

    return matrixListsTransformed;
}

// ### MODEL DRAWING HELPER FUNCTIONS ###

// draw a seven segment display (https://en.wikipedia.org/wiki/Seven-segment_display) -> given the list of which "character" to draw
std::vector< mat4 > seven_seg_model(GLuint worldMatrixLocation, int segFlags[7]){

    float width = 0.1f;
    float depth = 0.1f;

    float gridUnit = 0.2f;

    float height = gridUnit * 3;

    std::vector< mat4 > matrixList;
    
    // a
    if(segFlags[0] == 1){
        mat4 pillarWorldMatrix = translate(mat4(1.0f), vec3(0.0f, height * 2 , 0.0f)) * rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(0.0f, 0.0f, 1.0f)) * scale(mat4(1.0f), vec3(width, height, depth));
        matrixList.push_back(pillarWorldMatrix);
    }

    // b
    if(segFlags[1] == 1){
        mat4 pillarWorldMatrix = translate(mat4(1.0f), vec3(height/2, height + (height/2), 0.0f))  * scale(mat4(1.0f), vec3(width, height, depth));
        matrixList.push_back(pillarWorldMatrix);
    }

    // c
    if(segFlags[2] == 1){
        mat4 pillarWorldMatrix = translate(mat4(1.0f), vec3(height/2, height/2, 0.0f))  * scale(mat4(1.0f), vec3(width, height, depth));
        matrixList.push_back(pillarWorldMatrix);
    }

    // d
    if(segFlags[3] == 1){
        mat4 pillarWorldMatrix = translate(mat4(1.0f), vec3(0.0f, 0.0f, 0.0f)) * rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(0.0f, 0.0f, 1.0f)) * scale(mat4(1.0f), vec3(width, height, depth));
        matrixList.push_back(pillarWorldMatrix);
    }

    // e
    if(segFlags[4] == 1){
        mat4 pillarWorldMatrix = translate(mat4(1.0f), vec3(- height/2, height/2, 0.0f))  * scale(mat4(1.0f), vec3(width, height, depth));
        matrixList.push_back(pillarWorldMatrix);
    }

    // f
    if(segFlags[5] == 1){
        mat4 pillarWorldMatrix = translate(mat4(1.0f), vec3(- height/2, height + (height/2), 0.0f))  * scale(mat4(1.0f), vec3(width, height, depth));
        matrixList.push_back(pillarWorldMatrix);
    }

    // g
    if(segFlags[6] == 1){
        mat4 pillarWorldMatrix = translate(mat4(1.0f), vec3(0.0f, height, 0.0f)) * rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(0.0f, 0.0f, 1.0f)) * scale(mat4(1.0f), vec3(width, height, depth));
        matrixList.push_back(pillarWorldMatrix);
    }

    return matrixList;
}


int main(int argc, char*argv[])
{
    // Initialize GLFW and OpenGL version
    glfwInit();
    
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);

    // Create Window and rendering context using GLFW
    GLFWwindow* window = glfwCreateWindow(1024, 768, "Comp371 - Assignment 1", NULL, NULL);
    if (window == NULL)
    {
        std::cerr << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);
    
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
    float cameraSpeed = 5.0f;
    float cameraFastSpeed = 5 * cameraSpeed;
    float cameraHorizontalAngle = 90.0f;
    float cameraVerticalAngle = 0.0f;
    bool  cameraFirstPerson = true; // press 1 or 2 to toggle this variable

    // Set initial view matrix
    mat4 viewMatrix = lookAt(cameraPosition,  // eye
                             cameraPosition + cameraLookAt,  // center
                             cameraUp ); // up
    
    GLuint viewMatrixLocation = glGetUniformLocation(shaderProgram, "viewMatrix");
    glUniformMatrix4fv(viewMatrixLocation, 1, GL_FALSE, &viewMatrix[0][0]);
    
    // For frame time
    float lastFrameTime = glfwGetTime();
    int lastMouseLeftState = GLFW_RELEASE;
    double lastMousePosX, lastMousePosY;
    glfwGetCursorPos(window, &lastMousePosX, &lastMousePosY);
    
    // Other OpenGL states to set once
    // Used to hide pixels that are behind others, depending on the viewing angle
    // Enable Backface culling
    glEnable(GL_CULL_FACE);
    
    // @TODO 1 - Enable Depth Test
    glEnable(GL_DEPTH_TEST);
    
    // Input Parameters init.
    float gridUnit = 0.2f;

    int numLetterID = 5;
    int focusLetterID = 0;
    float scaleLetterID = 1.0f;

    GLuint worldMatrixLocation = glGetUniformLocation(shaderProgram, "worldMatrix");
    float worldAngleX = 0.0f;
    float worldAngleY = 0.0f;

    float fov = 45.0f;

    int vbo;

    vec3 dummyVect = vec3(0.0f, 0.0f, 1.0f);

    // Init Letters
    std::vector<mat4> matrixList;
    std::vector<mat4> matrixListTransformed;
    std::vector<std::vector< mat4 >> letter_id_matrix;
    mat4 translateMatrix;
    mat4 rotateMatrixInit;

    int segP[] = {1,1,0,0,1,1,1};
    matrixList = seven_seg_model(worldMatrixLocation, segP);
    translateMatrix = translate(mat4(1.0f), vec3((gridUnit * 5), (gridUnit * 0), (gridUnit * 0)));
    matrixListTransformed = apply_transform_2_model(matrixList, translateMatrix);
    letter_id_matrix.push_back(matrixListTransformed);

    int segE[] = {1,0,0,1,1,1,1};
    matrixList = seven_seg_model(worldMatrixLocation, segE);
    translateMatrix = translate(mat4(1.0f), vec3((gridUnit * 10), (gridUnit * 0), (gridUnit * 0)));
    matrixListTransformed = apply_transform_2_model(matrixList, translateMatrix);
    letter_id_matrix.push_back(matrixListTransformed);

    // Init ID
    int seg2[] = {1,1,0,1,1,0,1};
    matrixList = seven_seg_model(worldMatrixLocation, seg2);
    translateMatrix = translate(mat4(1.0f), vec3((gridUnit * 17), (gridUnit * 0), (gridUnit * 0)));
    matrixListTransformed = apply_transform_2_model(matrixList, translateMatrix);
    letter_id_matrix.push_back(matrixListTransformed);

    int seg8[] = {1,1,1,1,1,1,1};
    matrixList = seven_seg_model(worldMatrixLocation, seg8);
    translateMatrix = translate(mat4(1.0f), vec3((gridUnit * 22), (gridUnit * 0), (gridUnit * 0)));
    matrixListTransformed = apply_transform_2_model(matrixList, translateMatrix);
    letter_id_matrix.push_back(matrixListTransformed);

    // List of Letter/ID
    std::vector< LetterIDModel > list_letter_id;
    int circleDistance = 50;
    int offsetDistance = 15; // to correct when we rotate the 3 and 6 o clock models, to be relatively centered with regard to x-axis

    // 12 o clock letter/id
    translateMatrix = translate(mat4(1.0f), vec3((gridUnit * 0), (gridUnit * 0), (gridUnit * -circleDistance)));
    std::vector<std::vector< mat4 >> new_letter_id_matrix = apply_transform_2_models(letter_id_matrix, translateMatrix);
    LetterIDModel model = LetterIDModel(new_letter_id_matrix);
    list_letter_id.push_back(model);

    // 6 o clock letter/id
    translateMatrix = translate(mat4(1.0f), vec3((gridUnit * offsetDistance), (gridUnit * 0), (gridUnit * circleDistance)));
    rotateMatrixInit = rotate(glm::mat4(1.0f), glm::radians(-180.0f), glm::vec3(0.0f, 1.0f, 0.0f));
    new_letter_id_matrix = apply_transform_2_models(letter_id_matrix, translateMatrix * rotateMatrixInit);
    model = LetterIDModel(new_letter_id_matrix);
    list_letter_id.push_back(model);

    // 3 o clock letter/id
    translateMatrix = translate(mat4(1.0f), vec3((gridUnit * circleDistance), (gridUnit * 0), (gridUnit * -offsetDistance)));
    rotateMatrixInit = rotate(glm::mat4(1.0f), glm::radians(-90.0f), glm::vec3(0.0f, 1.0f, 0.0f));
    new_letter_id_matrix = apply_transform_2_models(letter_id_matrix, translateMatrix * rotateMatrixInit);
    model = LetterIDModel(new_letter_id_matrix);
    list_letter_id.push_back(model);

    // 9 o clock letter/id
    translateMatrix = translate(mat4(1.0f), vec3((gridUnit * -circleDistance), (gridUnit * 0), (gridUnit * offsetDistance)));
    rotateMatrixInit = rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(0.0f, 1.0f, 0.0f));
    new_letter_id_matrix = apply_transform_2_models(letter_id_matrix, translateMatrix * rotateMatrixInit);
    model = LetterIDModel(new_letter_id_matrix);
    list_letter_id.push_back(model);

    // middle letter/id
    translateMatrix = translate(mat4(1.0f), vec3((gridUnit * 0), (gridUnit * 0), (gridUnit * 0)));
    new_letter_id_matrix = apply_transform_2_models(letter_id_matrix, translateMatrix);
    model = LetterIDModel(new_letter_id_matrix);
    list_letter_id.push_back(model);
    
    // Entering Main Loop
    while(!glfwWindowShouldClose(window))
    {
        // Frame time calculation
        float dt = glfwGetTime() - lastFrameTime;
        lastFrameTime += dt;

        // Each frame, reset color of each pixel to glClearColor

        // @TODO 1 - Clear Depth Buffer Bit as well
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        //glClear(GL_COLOR_BUFFER_BIT);
        
        // Make Grid
        int gridSize = 128;
        std::vector<mat4> og_gridMatrixList;
        for (int i=0; i<(gridSize/2); ++i)
        {
            mat4 zAxisLineMatrix = translate(mat4(1.0f), vec3(0.0f + (i * gridUnit), 0.0f, 0.0f)) * scale(mat4(1.0f), vec3(0.01f, 0.01f, gridUnit * gridSize));

            // turn 90
            mat4 xAxisLineMatrix = translate(mat4(1.0f), vec3(0.0f, 0.0f, 0.0f + (i * gridUnit))) * rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(0.0f, 1.0f, 0.0f)) * scale(mat4(1.0f), vec3(0.01f, 0.01f, gridUnit * gridSize));
            
            og_gridMatrixList.push_back(zAxisLineMatrix);
            og_gridMatrixList.push_back(xAxisLineMatrix);
        }

        for (int i=0; i<(gridSize/2); ++i)
        {
            mat4 zAxisLineMatrix = translate(mat4(1.0f), vec3(0.0f + (-i * gridUnit), 0.0f, 0.0f)) * scale(mat4(1.0f), vec3(0.01f, 0.01f, gridUnit * gridSize));

            // turn 90
            mat4 xAxisLineMatrix = translate(mat4(1.0f), vec3(0.0f, 0.0f, 0.0f + (-i * gridUnit))) * rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(0.0f, 1.0f, 0.0f)) * scale(mat4(1.0f), vec3(0.01f, 0.01f, gridUnit * gridSize));
        
            og_gridMatrixList.push_back(zAxisLineMatrix);
            og_gridMatrixList.push_back(xAxisLineMatrix);
        }
        
        // Make Axis
        float lengthAxis = gridUnit * 7;

        mat4 og_yAxisMatrix = translate(mat4(1.0f), vec3(0.0f , lengthAxis/2, 0.0f)) * scale(mat4(1.0f), vec3(0.05f, lengthAxis, 0.05f));
        mat4 og_xAxisMatrix = translate(mat4(1.0f), vec3(lengthAxis/2 , 0.0f, 0.0f)) * rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(0.0f, 0.0f, 1.0f)) * scale(mat4(1.0f), vec3(0.05f, lengthAxis, 0.05f));
        mat4 og_zAxisMatrix = translate(mat4(1.0f), vec3(0.0f , 0.0f, lengthAxis/2)) * rotate(glm::mat4(1.0f), glm::radians(90.0f), glm::vec3(1.0f, 0.0f, 0.0f)) * scale(mat4(1.0f), vec3(0.05f, lengthAxis, 0.05f));

        // ### Apply Input Transformations ###

        // world Rotations
        mat4 worldXRotateMatrix = rotate(glm::mat4(1.0f), glm::radians(worldAngleX), glm::vec3(1.0f, 0.0f, 0.0f));
        mat4 worldYRotateMatrix = rotate(glm::mat4(1.0f), glm::radians(worldAngleY), glm::vec3(0.0f, 1.0f, 0.0f));
        mat4 worldRotateMatrix = worldXRotateMatrix * worldYRotateMatrix;
        
        // grid rotations
        std::vector< mat4 > gridMatrixList = apply_transform_2_model(og_gridMatrixList, worldRotateMatrix);

        // axis rotations
        mat4 yAxisMatrix = worldRotateMatrix * og_yAxisMatrix;
        mat4 xAxisMatrix = worldRotateMatrix * og_xAxisMatrix;
        mat4 zAxisMatrix = worldRotateMatrix * og_zAxisMatrix;

        // model letter/id rotations & specific transformations for focused model
        for(int i = 0; i < numLetterID; i++){
            mat4 scaleMatrix = scale(mat4(1.0f), vec3(list_letter_id[i].scale, list_letter_id[i].scale, list_letter_id[i].scale));
            mat4 moveMatrix = translate(mat4(1.0f), vec3(list_letter_id[i].x,list_letter_id[i].y,list_letter_id[i].z));
            mat4 rotateMatrix = rotate(glm::mat4(1.0f), glm::radians(list_letter_id[i].angle), glm::vec3(0.0f, 1.0f, 0.0f));

            list_letter_id[i].m_letter_id_matrix = apply_transform_2_models(list_letter_id[i].og_letter_id_matrix, worldRotateMatrix * moveMatrix * scaleMatrix * rotateMatrix );
        }

        // ### DRAWING ###
        
        // Draw Grid
        vec3 whiteVect = vec3(1.0f, 1.0f, 1.0f);
        int w_vbo = createVertexBufferObject(false, whiteVect);
        glBindBuffer(GL_ARRAY_BUFFER, w_vbo); // FIXME -> not sure if this is good
        draw_model(gridMatrixList, worldMatrixLocation);
        
        // Draw Axis
        vec3 greenVect = vec3(0.0f, 1.0f, 0.0f);
        vbo = createVertexBufferObject(false, greenVect);
        glBindBuffer(GL_ARRAY_BUFFER, vbo); // FIXME -> not sure if this is good

        draw_matrix(yAxisMatrix, worldMatrixLocation);

        vec3 redVect = vec3(1.0f, 0.0f, 0.0f);
        vbo = createVertexBufferObject(false, redVect);
        glBindBuffer(GL_ARRAY_BUFFER, vbo); // FIXME -> not sure if this is good

        draw_matrix(xAxisMatrix, worldMatrixLocation);

        vec3 blueVect = vec3(0.0f, 0.0f, 1.0f);
        vbo = createVertexBufferObject(false, blueVect);
        glBindBuffer(GL_ARRAY_BUFFER, vbo); // FIXME -> not sure if this is good

        draw_matrix(zAxisMatrix, worldMatrixLocation);
        
        //// Draw the Letter/ID list
        vbo = createVertexBufferObject(true, dummyVect);
        glBindBuffer(GL_ARRAY_BUFFER, vbo); // FIXME -> not sure if this is good
        for(int i = 0; i < numLetterID; i++){
            draw_models(list_letter_id[i].m_letter_id_matrix, worldMatrixLocation);
        }
        
        // ### End Frame ###
        glfwSwapBuffers(window);
        glfwPollEvents();
        
        // ### Handle inputs ###
        if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
            glfwSetWindowShouldClose(window, true);
        
        // Selecting Model
        if (glfwGetKey(window, GLFW_KEY_1) == GLFW_PRESS)
        {
            focusLetterID = 0;
        }
        if (glfwGetKey(window, GLFW_KEY_2) == GLFW_PRESS) 
        {
            focusLetterID = 1;
        }

        if (glfwGetKey(window, GLFW_KEY_3) == GLFW_PRESS) 
        {
            focusLetterID = 2;
        }
        if (glfwGetKey(window, GLFW_KEY_4) == GLFW_PRESS) 
        {
            focusLetterID = 3;
        }

        if (glfwGetKey(window, GLFW_KEY_5) == GLFW_PRESS) 
        {
            focusLetterID = 4;
        }

        // Scaling
        if (glfwGetKey(window, GLFW_KEY_U) == GLFW_PRESS) // scale up
        {
            list_letter_id[focusLetterID].scale += 0.01f;
        }

        if (glfwGetKey(window, GLFW_KEY_J) == GLFW_PRESS) // scale down
        {
            list_letter_id[focusLetterID].scale -= 0.01f;
        }

        // Move Model
        if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) // move left
        {
            list_letter_id[focusLetterID].x -= 0.01f;
        }
        
        if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) // move right
        {
            list_letter_id[focusLetterID].x += 0.01f;
        }
        
        if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS) // move forward
        {
            list_letter_id[focusLetterID].z -= 0.01f;
        }
        
        if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS) // move backwards
        {
            list_letter_id[focusLetterID].z += 0.01f;
        }
        
        if (glfwGetKey(window, GLFW_KEY_Q) == GLFW_PRESS) // rotate FIXME -> using Q,E instead of a,d
        {
            float angle = list_letter_id[focusLetterID].angle + 1.0f;

            if(angle > 360.0f){
                angle = 360.0f;
            }

            list_letter_id[focusLetterID].angle = angle;
        }
        
        if (glfwGetKey(window, GLFW_KEY_E) == GLFW_PRESS) // rotate
        {
            float angle = list_letter_id[focusLetterID].angle - 1.0f;

            if(angle < -360.0f){
                angle = -360.0f;
            }

            list_letter_id[focusLetterID].angle = angle;
        }
        
        // World Rotation
        if (glfwGetKey(window, GLFW_KEY_LEFT) == GLFW_PRESS) // rotate relative to x axis
        {
            float angle = worldAngleX + 1.0f;

            if(angle > 360.0f){
                angle = 360.0f;
            }

            worldAngleX = angle;
        }
        
        if (glfwGetKey(window, GLFW_KEY_RIGHT) == GLFW_PRESS) // rotate relative to x axis
        {
            float angle = worldAngleX - 1.0f;

            if(angle < -360.0f){
                angle = -360.0f;
            }

            worldAngleX = angle;
        }
        
        if (glfwGetKey(window, GLFW_KEY_DOWN) == GLFW_PRESS) // rotate relative to y axis
        {
            float angle = worldAngleY + 1.0f;

            if(angle > 360.0f){
                angle = 360.0f;
            }

            worldAngleY = angle;
        }
        
        if (glfwGetKey(window, GLFW_KEY_UP) == GLFW_PRESS) // rotate relative to y axis
        {
            float angle = worldAngleY - 1.0f;

            if(angle < -360.0f){
                angle = -360.0f;
            }

            worldAngleY = angle;
        }

        if (glfwGetKey(window, GLFW_KEY_HOME) == GLFW_PRESS) // reset world 
        {
            worldAngleX = 0.0f;
            worldAngleY = 0.0f;
        }

        // Render modes
        if (glfwGetKey(window, GLFW_KEY_P) == GLFW_PRESS) // point render mode
        {
            glPolygonMode(GL_FRONT_AND_BACK, GL_POINT);
        }

        if (glfwGetKey(window, GLFW_KEY_L) == GLFW_PRESS) // line render mode
        {
            glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
        }

        if (glfwGetKey(window, GLFW_KEY_T) == GLFW_PRESS) // triangle render mode
        {
            glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
        }

        // Camera Input
        
        // Retrieve mouse position and processing it
        double mousePosX, mousePosY;
        glfwGetCursorPos(window, &mousePosX, &mousePosY);
        
        double dx = mousePosX - lastMousePosX;
        double dy = mousePosY - lastMousePosY;
        
        lastMousePosX = mousePosX;
        lastMousePosY = mousePosY;

        bool fastCam = glfwGetKey(window, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS || glfwGetKey(window, GLFW_KEY_RIGHT_SHIFT) == GLFW_PRESS;
        float currentCameraSpeed = (fastCam) ? cameraFastSpeed : cameraSpeed;

        // Pan Camera
        int panSensitivity = 5; // reduce the sensibility of the panning to mouse movements
        if (glfwGetMouseButton(window, GLFW_MOUSE_BUTTON_RIGHT) == GLFW_PRESS)
        {
            if(dx < -panSensitivity){
                cameraPosition.x += currentCameraSpeed * dt;
            }
            else if (dx > panSensitivity ){
                cameraPosition.x -= currentCameraSpeed * dt;
            }

            if(dy < -panSensitivity ){
                cameraPosition.z += currentCameraSpeed * dt;
            }
            else if (dy > panSensitivity ){
                cameraPosition.z -= currentCameraSpeed * dt;
            }
        }

        // Zoom Camera
        int zoomSensitivity = 5; // reduce the sensibility of the panning to mouse movements
        if (glfwGetMouseButton(window, GLFW_MOUSE_BUTTON_LEFT) == GLFW_PRESS)
        {
            if(dy < -zoomSensitivity){
                fov += 1;
            }
            else if (dy > zoomSensitivity){
                fov -= 1;
            }

            // Correct angle if needed
            if (fov < 1.0f){
                fov = 1.0f;
            }
            if (fov > 45.0f){
                fov = 45.0f; 
            }
        }
       
        // Convert to spherical coordinates
        const float cameraAngularSpeed = 40.0f;

        // Tilt Camera
        if (glfwGetMouseButton(window, GLFW_MOUSE_BUTTON_MIDDLE) == GLFW_PRESS){
            cameraHorizontalAngle -= dx * cameraAngularSpeed * dt;
            cameraVerticalAngle   -= dy * cameraAngularSpeed * dt;
        }
        
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
      
        // Camera Matrix
        // Set view matrix for shader
        mat4 viewMatrix = lookAt(cameraPosition, cameraPosition + cameraLookAt, cameraUp );

        GLuint viewMatrixLocation = glGetUniformLocation(shaderProgram, "viewMatrix");
        glUniformMatrix4fv(viewMatrixLocation, 1, GL_FALSE, &viewMatrix[0][0]);

        // Set projection matrix for shader
        mat4 projectionMatrix = glm::perspective(glm::radians(fov),            // field of view in degrees
                                                 800.0f / 600.0f,  // aspect ratio
                                                 0.01f, 100.0f);   // near and far (near > 0)
        
        GLuint projectionMatrixLocation = glGetUniformLocation(shaderProgram, "projectionMatrix");
        glUniformMatrix4fv(projectionMatrixLocation, 1, GL_FALSE, &projectionMatrix[0][0]);
    }
    
    // Shutdown GLFW
    glfwTerminate();
    
	return 0;
}

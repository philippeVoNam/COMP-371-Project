# COMP-371 Project : Philippe Vo (27759908)

## What is it about ?
- This is a project for the COMP-371 class (Computer Graphics). It consists of a 3 part assignments 
that will help us understand better how to program computer graphics.

### 1st Assignment
- The first assignment has us make a simulation environement where there is a grid and a xyz axis in the middle.
- Around the middle, there are 4 models and 1 model in the middle. These models consists of the first and last letter of our first
name and student ID.
- Using keyboard and mouse inputs, the user is able to manipulate the models, camera and overall environement.

## Mouse and Keyboard Inputs
```
- 1-5                         : select models
- u                           : scale up models
- j                           : scale down models
- a-w-s-d                     : move model over the xz axis
- q-e                         : rotate models relative to y axis
- arrow-keys                  : rotate the environement relative to x and y axis
- home-key                    : reset the environement to initial angle
- p-l-t                       : change rendering method (point / line / triangle)
- right-mouse drag            : pan camera
- left-mouse drag up and down : zoom camera
- middle-mouse drag           : tilt camera
```

## Running Instructions (assuming using a Linux system)
- make your way into the build directory and run :
```
./ass1
```
## If not using Linux or do not have the build folder
- please refer to "compile_instructions.md"

## Credits
### 1st Assignment
- The first assignment borrows heavily from the "COMP-371 class" Lab03. Some code was taken from there.

## Resources used
- https://learnopengl.com/Getting-started/OpenGL

## Known Bugs and differences from assignment given
### 1st Assignment
- q/e inputs to rotate the models are not working as expected:
  - instead of rotating in place, they are rotating relative to the world origin (y-axis)

- q/e used to rotate instead of a/d
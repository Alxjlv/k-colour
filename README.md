# K-colour image converter

This project uses the k means algorithm to cluster the pixels of an image into k clusters, and then generate an image with only k colours. It uses MatLabs advanced matrix manipulation capabilities to efficiently process the image

## Main Learnings

This project was my first fairly complex project. As a result, I was still getting familiar with MatLab in many ways. However I did learn many things:

- Familiarity with the K means algorithm
- First look into vectorisation
- Good code structure 
- Using MatLab scripts across files
- Matrix manipulation
- 3D arrays
- Image manipulation - using unsigned 8 bit ints for images with rgb pixel values

## What I would have done differently

If I was to redo this project or work to improve it I would:

- Vectorise more - multiple nested for loops exist in my code, which slows it down considerably
- More descriptive variable names
- Some more advanced form of UI (even just enahnced terminal interaction) allowing a user to more intuitively interact with the code
- Use multithreading to perform simultaneous operations & improve performance
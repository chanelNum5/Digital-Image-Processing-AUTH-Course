# Digital Image Processing AUTH Course - Assignment 1
<p>
This is the first assignment of the course Digital Image Processing (AUTh - 8th semester). The goal is to build MATLAB functions that implement point transform and histogram transform to the input images.
</p>
<h2>Point Transform</h2>
<p align="center">
  <img src="https://user-images.githubusercontent.com/116058576/196677808-12cf954f-ff1b-4ca0-a1e7-105677438a16.png" />
</p>
<p>
Every pixel of the input image gets the new value according to the function. The Point Transform can be found in the pointtransform.m and the script that demonstrates the functionality of it is the partFirst.m <br>
This is the input image:
</p>
<p align="center">
  <img src="https://user-images.githubusercontent.com/116058576/196678826-dc7a6dbc-8c9f-4a34-89a4-a0711ca2c7b4.png" />
</p>
<p>
In this application, at first, we convert the image to grayscale and convert the pixels' values in a range [0,1].<br>
<ul>
<li>For [x1,y1, x2, y2] = [0.1961, 0.0392, 0.8039, 0.9608]</li>
</ul>
<p align="center">
  <img src="https://user-images.githubusercontent.com/116058576/196701197-999341d3-1de6-4c2d-9d72-34b4624cc3a3.png" />
</p>
<ul>
<li>For [x1,y1,x2,y2]=[0.5 , 0 , 0.5 , 1]</li>
</ul>
<p align="center">
  <img src="https://user-images.githubusercontent.com/116058576/196701197-999341d3-1de6-4c2d-9d72-34b4624cc3a3.png" />
</p>
</p>
<h2>Histogram Transform</h2>
<p>
In this part we tranform an image, so that the histogram of the transformed image approaches a histogram of a given distribution. The assignment requires to build two functions for this transformation; histtransform.m and pdf2hist.m. The first implements a greedy algorithm to transform the image according to the given histogram, while the second transforms the given Probability Density Function (PDF) to a histogram. The script partSecond.m demonstrates the histogram transformation for two known distributions, Uniform and Normal.
<ul>
<li>Uniform Distribution [0,1]</li>
</ul>
<p align="center">
  <img src="https://user-images.githubusercontent.com/116058576/196706494-75beef80-8176-45b7-ba3b-9095af21fd89.png" />
</p>
<ul>
<li>Normal Distribution N(0.5,0.1)</li>
</ul>
<p align="center">
  <img src="https://user-images.githubusercontent.com/116058576/196708649-02e13015-4db5-46af-9485-ebe57702731e.png"/>
</p>
</p>

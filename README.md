# PID-controller-for-Semi-active-suspension-
## Summary
We have designed a semi-active suspension system of a vehicle using PID controller and compared its performance with the Passive suspension system, by modelling the vehicle as a quarter car model. **MATLAB Simulink** will be used to design and  test the Semi-active and Passive suspension system. 
## Problem
![Problem](https://github.com/nitin0533/PID-controller-for-Semi-active-suspension-/blob/main/problem.png)

The figure shows the Structural dynamic system of the Quarter car model. The sprung and unsprung mass have the suspension system between them modelled with spring stiffness 'k1' and damping coefficient 'b1'. The tyre is modelled as a spring and damper of constatns 'k2' and 'b2'. The PID controller will change the suspension stiffness 'b1' to damp out oscillations quickly. The feedback to the PID controller is the Suspension body travel which is compared with Zero reference. The performance of the Semi-active suspension is compared with the Passive suspension. Both suspensions will be tested on 3 different road profiles and vehicle body travel will be compared. The semi-active and passive suspension system will be modelled on **MATLAB Simulink**. The Vehicle parameters are tabulated
![Problem](https://github.com/nitin0533/PID-controller-for-Semi-active-suspension-/blob/main/model%20parameters.png)
## Tasks
1. Studied the dynamics of problem, obtained governing differential equations.  
2. Developed the MATLAB Simulink model to simulate the governing differential equations. 
3. Tuned and tested the PID controller on different road profiles for improvement in Peak overshoot & Settling time.
4. Compared the results of Semi-active and Passive system.

## MATLAB codes and Simulink models  
**passive.slx**  --  contains the simulink model for passive suspension system  
**active.slx** --  contains the simulink model for semi-active suspension system  
**code.m** --  adds all the model parameters to the Workspace, and displays the results extracted from Simulink.  

## **How to run the codes and models**  
1.  Firstly run **code.m**. It has all required model parameter values.Once code is run, it adds all the parameters to the MATLAB Workspace. 
2. Now run the **passive.slx** simulink model. You may change the road profile by clicking on 'fcn' box at the input. The vehicle body travel is visible at the scope 'x1'.     
3. Now run the **active.slx** simulink model. The vehicle body travel is visible at the scope 'x1'. The parameters of the PID controller can be changed by clicking the PID toolbox in the model. 

## Results
### Plots of Vehicle body travel for different road profiles
1. Unit Step Response (Sudden bump on the road)
![Problem](https://github.com/nitin0533/PID-controller-for-Semi-active-suspension-/blob/main/step.jpg)

2. For a typical speed-braker
![Problem](https://github.com/nitin0533/PID-controller-for-Semi-active-suspension-/blob/main/speed_breaker.jpg)

3. For a complete sinusoid input
![Problem](https://github.com/nitin0533/PID-controller-for-Semi-active-suspension-/blob/main/complete_sine.jpg)

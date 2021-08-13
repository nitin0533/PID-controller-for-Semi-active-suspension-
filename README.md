# PID-controller-for-Semi-active-suspension-
## Summary
We have designed a semi-active suspension system of a vehicle using PID controller by modelling the vehicle as a quarter car model.
## Problem
![Problem](https://github.com/Abhinandan-Kumbhar/ControlsProject-InvertedPendulum/blob/main/problem.PNG)

The pendulum is attached to the top of a cart that can move along the x-direction as shown in the figure. The cart is driven by an engine which exerts a horizontal force F . In addition, the cart also experiences a resistance  f  due to its motion.  
An LQR controller needs to be designed for regulating the force exerted, so that the pendulum can be stabilized in the inverted position. The controller should work even if the pendulum is off the vertical initially. (Though of angle with verticle is measured from +y axis, the actual angle used in this problem is measured with -ve y axis. Therefore, we should expect the pendulum to stabilize with angle pi radians with -ve y axis and 0 angular velocity)

## Tasks
1. Studied the dynamics of problem, obtained governing differential equations and determined the rate of change of state  
2. Found out the fixed points and linearized about the desired fixed point  
3. Checked for stability of the fixed point and controllability about the fixed point  
4. Designed a LQR controller based on the results obtained above using suitable cost matrices  
5. Solve for the state from the differential equations and plotted the behaviour of the different state components  
6. Create a graphical simulation of the pendulum-cart system.  
7. Create a block diagram of the linearized system in Simulink and analyze its behaviour.  

## MATLAB codes  
**pendcart_abhinandan.m**  --  contains the code describing the rate of change of the state of the system  
**sim_pendcart_abhinandan.m** --  contains the code with the different parameters, initial conditions, matrices, LQR controller, differential equation solver and graph plotter  
**disp_pendcart_abhinandan.m** --  contains the code for making the graphical simulation of the system  
**pendcartsim_abhinandan.slx** --  contains the Simulink block diagram of the system  

## **How to run the codes**  
1.  The main code is **sim_pendcart_abhinandan.m**. It has all required parameter values, fixed points and initial condition.  
2.  Once code is run, the state of system is assumed to be equal to initial state. IT calculates the jacobian matrices and LQR loss function.  
3.  The optimum gain matrix is determined using LQR function in MATLAB and used to determine the feedback force on the cart.  
4.  The parent code calls **pendcart_abhinandan.m** to determine rate of change of states due to applied force at given state.
5.  This process continues until we achieve vertically balanced pendulum.  
6.  The **disp_pendcart_abhinandan.m** code is automatically launched to display the animation.  
7.  **pendcartsim_abhinandan.slx** code contains a simulink block diagram, which has shared workspace with above codes and received the all parameters and LQR gain matrix from that workspace.

## Results
### Plots of angular deviation of pendulum from verticle and angular velocity of pendulum
We expected the pendulum to stabilize with angle pi radians with -ve y axis and 0 angular velocity, that is what we get!!!
![Problem](https://github.com/Abhinandan-Kumbhar/ControlsProject-InvertedPendulum/blob/main/Plots.png)
### Demo video



https://user-images.githubusercontent.com/65642096/129035471-aa09f39e-b41b-4a2a-9995-b657b48f2006.mp4


# Section 1. Lotka–Volterra Models

### Summary of Models
The Lotka-Volterra models attempt to model the population dynamics of two species as they interact with one another in some manner. The interaction type (predator-prey, competition, etc) defines system of differential equations and parameters:

#### Predator-Prey Equations 
<img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/eba353633616971f427b13e175bfbdb1b99bcff0" width="100" height="100" />
What is going on in these equations? Let x be the prey population, y be the predator population, t be time, dx/dt be the change in prey population, dy/dt be the change in predator population, and all of the other parameters (alpha, beta, gamma, delta) be real coefficients that describe the interaction dynamics between the two populations,

Here are some assumptions of the predator-prey model:
- prey has infinite food supply and appetite 
- the predator only eats the prey and have infinite appetite
- population dynamics are proportional to the population size
- no enviornmental or evolutionary forces are taken into account

See the [Lotka-Volterra equations](https://en.wikipedia.org/wiki/Lotka%E2%80%93Volterra_equations) Wikipedia page for more information.

#### Competitive Equations
<img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/88c6f3f6a241ba6398452e1ffecff0aed08431ea" width="100" height="50" />
<img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/6240f4e238c336bc507d73836c5a4104ccf54fc8" width="100" height="50" />

What is going on in these equations? Let x_1 and x_2 be the respective species populations that are competing for a common food resource, r_1 and r_2 are the growth rates of each respective species, K_1 and K_2 be the respective carrying capacities of the two species, as well as alpha_12 and alpha_21 be the affect that one species has on the other. This model follows logistic dynamics.

Here are some assumptions of the predator-prey model:
- both species have infinite appetite 
- neither species has any predators
- population dynamics are proportional to the population size
- no enviornmental or evolutionary forces are taken into account

See the [Competitive Lotka–Volterra equations](https://en.wikipedia.org/wiki/Competitive_Lotka%E2%80%93Volterra_equations) Wikipedia page for more information.

### Model Analysis

#### Phase Plane 

A phase plane is a graphical representation of the solutions of a system of differential equations in a two-dimensional vector field where vectors represent derivatives of specific parameters at given points. Phase planes (or phase portraits) are useful for visualizing the dynamics and identifying limit behaviour of a system. 

To create a phase plane for a system of linear differential equations, we follow these steps:
1. Identify and sketch the x-nullclines, a set of points in the phase plane such that dx/dt=0 for parameters x and t
2. Identify and sketch the y-nullclines, a set of points in the phase plane such that dy/dt=0 for parameters y and t
3. Use the nullclines as region separators in the phase plane and fill in the veritical and horizontal direction vectors in each region 

To analyze the behaviour of a phase plane, we follow these steps:
1. Rewrite the system of linear differential equations as a matrix equation 
2. Find the eigenvalues of the system
3. Find the eigenvectors for the respective eigenvalues

From this eigenvalue analysis, we can examine Stability and Behaviour:

###### Stability
There are several ways types of stability for a phase portraits:
1. Unstable
2. Asymptotically stabe
3. Neutral stable

###### Behavoiur
There are several ways types of behaviours for a phase portraits:
1. If the eigenvalues are real and their signs are opposite, then we have a saddle ( unstable) 
2. If the eigevalues are real and their signs are the same , then we have a node (stable if trace < 0, unstable if trace > 0) 
3. If the eigenvalues have a real and complex component, then we have a spiral (stable if trace < 0, unstable if trace > 0)

###### Example
Here is a phase portrait of the Lotka-Volterra predator-prey equations plotted using MATLAB (see [source code](https://github.com/mattfaltyn/MATH-560/tree/main/1-lotka/Source%20Code)).
<img src="https://github.com/mattfaltyn/MATH-560/blob/main/1-lotka/Figures/phase_plane.jpg" width="300" height="300" />

#### Nondimensionalization

Nondimensionalization is a technique used in dynamical systems to reduce the number of constants in a system of differential equations by carefully simplifying and parameterizing the system. In my experience, it is a technique that is difficult to grasp conceptually without practice so we will jump straight into an example.

###### Example
Here is the system of differential equations for the Lotka-Volterra competition model:

<img src="https://github.com/mattfaltyn/MATH-560/blob/main/1-lotka/Figures/lotka-dim.png" width="100" height="200" />

Clearly, this system has units. It can be nondimensionalized in the following manner:

<img src="https://github.com/mattfaltyn/MATH-560/blob/main/1-lotka/Figures/lotka-nondim.png" width="100" height="200" />

which is much easier to analyze as independent changes in parameters alpha, beta, and delta can illustrate the behaviour of the system. 


#### Bifurcation Diagram 
A bifurcation diagram is closely related to a phase plane. By varying physical parameters in f(y), a bifurcation diagram displays qualitative information about equilibria for all y' = f(y).

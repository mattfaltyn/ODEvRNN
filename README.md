# MATH 560 Mathematical Biology

## 1. Lotka–Volterra Models

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
<img src="https://github.com/mattfaltyn/MATH-560/blob/main/lotka/phase_plane.jpg" width="300" height="300" />

#### Bifurcation Diagram 
TBD

#### Non-Dimensionalization
TBD

## 2. Epidemiology Models
### SIS

### SIR


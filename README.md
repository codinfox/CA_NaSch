CA_NaSch
========

This is a Matlab version of implementation of the well-known cellular automata of traffic model - NaSch.

# Algorithm
The algorithm is based on the paper *A celluar automation model for freeway traffic* by Kai Nagel and Michael Schreckenberg in 1992.
In the model, four most important steps are raised to be performed parallelly for all vehicles. They are:

1. **Acceleration**: if velocity *v* of a vehicle is lower than *vmax* and if the distance to the next car ahead if larger than *v*+1, the speed is advanced by one [*v*->*v*+1]

2. **Slowing down(due to other cars)**: if a vehicle at site *i* sees the next the next vehicle at site *i*+*j*(with *j*<*v*), it reduces its speed to *j*-1 [*v*->*j*-1]

3. **Randomization**: with probability *p*, the velocity of each vehicle (if greater than zero) is decreased by one [*v*->*v*-1]

4. **Car motion**: each vehicle is advanced *v* sites.

The four steps are modelled on the basis of integer valued probabilistic cellular automation rules.

# Implementation

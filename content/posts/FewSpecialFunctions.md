+++
title = "Julia package for some special functions"
date = 2023-01-26
description = "FewSpecialFunctions.jl"
[taxonomies]
categories = ["Code"]
+++

I implemented a few special functions in Julia that I had to use for my master's thesis

## FewSpecialFunctions.jl

### Overview
This post outlines the recent implementation of several special functions in the Julia programming language. These functions are primarily of interest in scientific and mathematical computing.

### Details of the Implementations

- The Clausen function, relevant in certain areas of number theory.

- Coulomb wave functions, useful in quantum scattering theory.

- Debye function, used in solid-state physics, particularly in the study of heat capacities at low temperatures.

- Fresnel Functions, related to optics, specifically in the context of diffraction and interference.

- Struve Function, finds use in certain wave equation solutions.

- Hypergeometric Functions, these functions are versatile and find applications in various fields, including physics and statistics.

- Confluent Hypergeometric Functions, a subset of hypergeometric functions, these are particularly relevant in theoretical physics. 

- Fermi-Dirac Functions, important in studying quantum systems at finite temperatures.

<figure>
  <img src="/assets/combinedplot.png" alt="Poster" title="FewSpecialFunctions" width="500">
  <figcaption>A few examples</figcaption>
</figure>

### Code

Code can be found [here](https://github.com/MartinMikkelsen/FewSpecialFunctions.jl), contributions are welcome.

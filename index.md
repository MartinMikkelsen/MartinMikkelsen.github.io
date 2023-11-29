@def title = "Martin Mikkelsen"
@def tags = ["syntax", "code"]

\tableofcontents 

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


\figenv{Some functions}{/assets/combinedplot.png}{width:100%;border: 2px solid white;}


## Master's thesis

### Introduction

This thesis presents a study on pion photoproduction off nucleons near the threshold, utilizing a nuclear model that incorporates explicit mesons. The approach deviates from conventional potential-based interactions between nucleons, focusing instead on meson emissions and absorptions.

### Model overview


The core aspect of this model is the explicit treatment of mesons, rather than describing nucleon interactions through a potential. This approach is based on the premise that nucleons interact by emitting and absorbing mesons. The study limits its scope to the one meson approximation, simplifying the complex interactions within the system. This approximation is crucial for focusing on specific interactions without the computational complexity of multiple meson exchanges. The thesis specifically targets cases where the mesons involved are pions. This choice is due to the significance of pions in nuclear physics and their role in nucleon interactions.

### Conclusion

The thesis provides insights into the dynamics of pion photoproduction using a novel meson-based nuclear model. The findings contribute to the broader understanding of nucleon interactions and offer a different perspective from traditional potential-based models.

\figenv{Total cross section as a function of photon energy}{/assets/crossfit_rel.pdf}{width:100%;border: 2px solid white;}
\figenv{Differential cross section}{/assets/MultiDiffcross_rel.pdf}{width:100%;border: 2px solid white;}


## Poster presentation at Dansk Fysisk Selskab

I had a poster presentation at dansk fysisk selskab. Here is the poster.
\figenv{Poster}{/assets/PhotoproductionPoster.pdf}{width:100%;border: 2px solid white;}

## Paper published

We apply the nuclear model with explicit mesons to photoproduction of neutral pions off protons at the threshold. In this model the nucleons do not interact with each other via a potential but rather emit and absorb mesons that are treated explicitly on equal footing with the nucleons. We calculate the total cross section of the reaction for energies close to threshold and compare the calculations with available experimental data. We show that the model is able to reproduce the experimental data and determine the range of the parameters where the model is compatible with the experiment.

\figenv{Total cross section}{/assets/fit.png}{width:100%;border: 2px solid white;}

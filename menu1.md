+++
title = "Code"
hascode = true
date = Date(2019, 3, 22)
rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

tags = ["syntax", "code"]
+++


# Code

\toc

## Coulomb Wave Funcitons

As a part of my master's thesis I had to make a numerical implementation of the Coulomb wave functions. The Coulomb wave equation for a charged particle with arbitrary angular momentum and charge is given by 
$$	
    \nabla^2\psi +\left( k^2-\frac{2\mu}{\hbar^2}V(r)\right)\psi = 0,
$$
where $\mu$ is the reduced mass of the system. The radial wave function $u(r)$ satisfies the following differential equation
$$
	\frac{\text{d}^2 u_\ell}{\text{d}r^2}+\left( k^2-\frac{\ell(\ell+1)}{r^2}-\frac{2\mu}{\hbar^2}\frac{Ze^2}{r}\right)u_\ell=0,
$$
where $Z$ is the product of the charges. Two independent solutions can be found to this equation -- these are called the regular and irregular Coulomb wave functions denoted $F_\ell(r)$ and $G_\ell(r)$ respectively. The regular Coulomb wave function $F_\ell(r)$ is a real function that vanishes at $r=0$ and the behaviour of the function is described using a parameter $\eta$ which describes how strongly the Coulomb interaction is
$$
	\eta = \frac{Zmc\alpha }{\hbar k},
$$
where $m$ is the mass of the particle, $k$ is the wave number and $\alpha$ is the fine structure constant. The solution to is given by
$$
	F_\ell(\eta,kr) = C_\ell (\eta) (kr)^{\ell+1}\text{e}^{-ikr}  {}_1 F_1(\ell+1-i\eta,2\ell+2,2ikr),
$$
where ${}_1F_1(kr)$ is a confluent hypergeometric function and $C_\ell(\eta)$ is a normalization constant given by 
$$
	C_\ell(\eta) = \frac{2^\ell \text{e}^{-\pi\eta/2}|\Gamma(\ell+1+i\eta)|}{(2\ell+1)!},
$$
where $\Gamma$ is the gamma function. For numerical purposes, it is useful to use the [integral representation of the regular Coulomb wave function](https://dlmf.nist.gov/33.7)
$$
	F_\ell(\eta,\rho) = \frac{\rho^{\ell+1}2^\ell e^{i\rho-(\pi\eta/2)}}{|\Gamma(\ell+1+i\eta)|} \int_0^1 e^{-2i\rho t}t^{\ell+i\eta}(1-t)^{\ell-i\eta} \, \text{d}t.
$$

This implementation need the gamma function from [SpecialFunctions.jl](https://github.com/JuliaMath/SpecialFunctions.jl)

```julia:./coulomb.jl
using Plots, FewSpecialFunctions, LaTeXStrings # hide
ENV["GKSwstype"] = "100" # hide

plot_font = "Computer Modern" # hide
default(fontfamily=plot_font,linewidth=2.5, framestyle=:box, label=nothing, grid=true,palette=:tab10) # hide
x = range(0,25,1000)
plot(x,regular_Coulomb.(0,0.3,x), label=L"F_0(0.3,ρ)")
plot!(x,regular_Coulomb.(0,-0.3,x), label=L"F_0(-0.3,ρ)")
xlabel!(L"ρ")
title!("Regular Coulomb Wave Functions")
```
\output{./coulomb.jl}

Use a similar approach to plot the regular Coulomb functions for different a $\ell$

```julia:./coulomb2.jl
using Plots, FewSpecialFunctions, LaTeXStrings # hide
ENV["GKSwstype"] = "100" # hide

plot_font = "Computer Modern" # hide
default(fontfamily=plot_font,linewidth=2.5, framestyle=:box, label=nothing, grid=true,palette=:tab10) # hide
x = range(0,25,1000)
plot(x,regular_Coulomb.(1e-5,5,x), label=L"F_0(5,ρ)")
plot!(x,regular_Coulomb.(1,5,x), label=L"F_1(5,ρ)")
plot!(x,regular_Coulomb.(2,5,x), label=L"F_2(5,ρ)")
plot!(x,regular_Coulomb.(3,5,x), label=L"F_3(5,ρ)")
title!("Regular Coulomb Wave Functions")
xlabel!(L"ρ")
```

## Including scripts

Another approach is to include the content of a script that has already been executed.
This can be an alternative to the descriptie on above if you'd likto only run the code once because it's particularly slow or because it's not Julia code.
For this you can use the `\input` command specifying which language it should be tagged as:


\input{julia}{/_assets/scripts/script1.jl} <!--_-->


these scripts can be run in such a way that their output is also saved to file, see `scripts/generate_results.jl` for instance, and you can then also input the results:

\output{/_assets/scripts/script1.jl} <!--_-->

which is convenient if you're presenting code.

**Note**: paths specification matters, see [the docs](https://tlienart.github.io/franklindocs/code/index.html#more_on_paths) for details.

Using this approach with the `generate_results.jl` file also makes sure that all the code on your website works and that all results match the code which makes maintenance easier.

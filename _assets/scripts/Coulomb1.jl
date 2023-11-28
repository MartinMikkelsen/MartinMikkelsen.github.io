using Plots, FewSpecialFunctions, LaTeXStrings # hide
ENV["GKSwstype"] = "100" # hide

plot_font = "Computer Modern" # hide
default(fontfamily=plot_font,linewidth=2.5, framestyle=:box, label=nothing, grid=true,palette=:tab10) # hide
x = range(0,25,1000)
plot(x,regular_Coulomb.(0,0.3,x), label=L"F_0(0.3,ρ)")
plot!(x,regular_Coulomb.(0,-0.3,x), label=L"F_0(-0.3,ρ)")
xlabel!(L"ρ")
title!("Regular Coulomb Wave Functions")
savefig(joinpath(@__DIR__, "output", "coulomb1.svg"))

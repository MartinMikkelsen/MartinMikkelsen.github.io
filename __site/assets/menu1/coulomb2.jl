# This file was generated, do not modify it. # hide
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
savefig(joinpath(@OUTPUT, "Coulomb2.png")) # hide
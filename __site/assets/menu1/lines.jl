# This file was generated, do not modify it. # hide
using ModelingToolkit, MethodOfLines, DomainSets, NonlinearSolve

@parameters x y
@variables u(..)

Dx = Differential(x)
Dy = Differential(y)
Dxx = Differential(x)^2
Dyy = Differential(y)^2

eq = Dxx(u(x, y)) + Dyy(u(x, y)) ~ exp(u(x,y))

a = 5.2
b = 4.3
c = 3.5
d = 2.2

bcs = [u(0, y) ~ a,
       u(x, 0) ~ c,
       Dx(u(0, y)) ~ b,
       Dy(u(x, 0)) ~ d]


domains = [x ∈ Interval(0.0, 1.0),
           y ∈ Interval(0.0, 1.0)]

@named pdesys = PDESystem([eq], bcs, domains, [x, y], [u(x, y)])

dx = 0.1
dy = 0.1

discretization = MOLFiniteDifference([x => dx, y => dy], nothing, approx_order=2)

prob = discretize(pdesys, discretization)
sol = NonlinearSolve.solve(prob, NewtonRaphson())

u_sol = sol[u(x, y)]

using Plots

heatmap(sol[x], sol[y], u_sol, xlabel="x", ylabel="y",
        title="Solution")
		
savefig(joinpath(@OUTPUT, "heat.png"))
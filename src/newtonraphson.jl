@doc raw"""
`x=newtonraphson(f,x,tol)`

`newtonraphson` computes the root of
a function f from a guess value
within a given tolerance tol
using the method of Newton-Raphson.

`newtonraphson` is an internal function of
the psychrometrics toolbox for Julia.

"""
function newtonraphson(f::Function,x::Number,tol::Number)
    while abs(f(x))>tol
        a=(f(x+1e-7)-f(x))/1e-7
        x=x-f(x)/a
    end
    return x
end

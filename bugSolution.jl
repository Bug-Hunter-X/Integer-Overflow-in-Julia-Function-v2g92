```julia
function myfunction_safe(x)
  if x > 0
    return x^2
  elseif x == 0
    return 0
  else
    return -(BigInt(x))^2
  end
end

println(myfunction_safe(2))
println(myfunction_safe(0))
println(myfunction_safe(-2))
println(myfunction_safe(typemin(Int64)))
```
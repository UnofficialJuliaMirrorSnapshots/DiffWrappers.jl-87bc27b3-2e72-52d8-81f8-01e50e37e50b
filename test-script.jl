# test script to be run on Travis
# NOTE remove when ContinuousTransformations.jl is registered
Pkg.clone("https://github.com/tpapp/ContinuousTransformations.jl.git")
Pkg.clone(pwd())
Pkg.build("DiffWrappers")
Pkg.test("DiffWrappers"; coverage=true)

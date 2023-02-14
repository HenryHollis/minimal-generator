using Pkg
Pkg.add(["MultivariateStats", "Plots", "DelimitedFiles","CSV", "DataFrames", "StatsBase", "Distances", "JuMP", "Clp", "GLPK",  "JLD", "ORCA", "LinearAlgebra", "SparseArrays", "Random", "Distributions", "Gurobi"])
Pkg.add(url="https://github.com/jonas-kr/PlotlyJS.jl#generate-artifacts")
Pkg.build("Gurobi")
Pkg.add("SparseArrays")
ENV["GUROBI_HOME"] = "/Library/gurobi912/mac64"
using SparseArrays
using MultivariateStats,  Distances, DelimitedFiles, Statistics, CSV, StatsBase, DataFrames,Distances, JuMP, PlotlyJS, JLD, ORCA, LinearAlgebra, Eirene, SparseArrays, Random, Distributions, SparseArrays, Gurobi, GLPK
using Plots
include("computePH.jl")
include("utilFunctions.jl")
include("edge-loss.jl")
include("triangle-loss.jl")
include("outputFunctions.jl")
include("find_sub_bdr_matrix.jl")

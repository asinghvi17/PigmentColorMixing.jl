using PigmentColorMixing
using Test
using Aqua

@testset "PigmentColorMixing.jl" begin
    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(PigmentColorMixing)
    end
    # Write your tests here.
end

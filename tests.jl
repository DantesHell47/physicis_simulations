using Test
include("prob.jl")

function test_projectile_simulation()
    angle = π/4
    initial_velocity = 30.0
    air_resistance = 0.05

    x, y = projectile_simulation(angle, initial_velocity, air_resistance)

    @test length(x) == length(y)
    @test x[1] ≈ 0.0
    @test y[1] ≈ 0.0
    @test y[end] ≈ 0.0
    @test maximum(x) ≈ 100.0
end

# Executa os testes
@testset "Testes da simulação de lançamento de projétil" begin
    @testset "Teste da função projectile_simulation" begin
        test_projectile_simulation()
    end
end

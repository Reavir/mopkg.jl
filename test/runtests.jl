using mopkg
using Test

@testset "fivo" begin
    a, b = -2, 1
    f = x -> x^2
    @test fibo(f, a, b) == (-0.38524590163934436, 0.38524590163934436) 
    a, b = -4, 5
    f = x -> x^4 + sin(x)
    @test fibo(f, a, b) == (-3.6888544891640866, 3.6938854489164084) 
end

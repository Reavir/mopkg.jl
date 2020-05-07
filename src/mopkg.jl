module mopkg

function fibo(f, a, b, ε=0.01)
    L = b - a
    k = 1
    #ilość potrzebnych wyliczeń wartości funkcji przy danej dokładności ε
    FN1 = trunc(Int, 2 * L / ε)
    i = 2
    F = [1, 1]
    while F[i] < FN1
        append!(F, F[i] + F[i-1])
        i = i + 1
    end
    N = size(F)[1] - 1
    while k < N
        l = F[N - k + 1] / F[N + 1]
        x1 = a + l
        x2 = b - l
        if f(x1) < f(x2)
            b = x2
        elseif f(x1) > f(x2)
            a = x1
        else
            a = x1
            b = x2
        end
        k = k + 1
    end
    
    return a, b
end

export fibo

end # module

function hotpo(x::Int64)
    count = 1
    while (x > 1)
        count = count + 1
        if (rem(x, 2)>0)
            x = 3x + 1
        else
            x = x/2
        end
    end
    count
end

x = collect(1:100000);
using BenchmarkTools
@btime res = map(hotpo, x);


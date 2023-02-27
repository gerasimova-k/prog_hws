# 0, 1, 1, 2, 3, 5, 8, 13, ...
# Fn = F(n-1) + F(n-2)
# F1 = F2 =
fib_1 = 1
fib_2 = 1
n = int(input("Порядковый номер числа Фибоначчи:"))
i = 0
while i < n - 2: 
    fib_sum = fib_1 + fib_2
    fib_1 = fib_2
    fib_2 = fib_sum
    i += 1
print(fib_2)
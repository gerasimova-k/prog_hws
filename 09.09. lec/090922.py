a = 4
b = 3
a + b
a - b
a * b
a ** b
a / b # true divide
a // b
a % b

6.5 // 2.5 # нельзя с float
int(4.7)
float()
int(input("enter"))
a < b
a > b
a <= b
a >= b
a == b # a = b
a != b

a = 1
b = 2 
c = 3
a < b and c < b # 1 * 0 true * false
a < b or c > b
number = int(imput("enter your number: "))

if number > 0: # все это он превращает в bool
    print("positive") # нужен отступ - индентик
elif number < 0: # = else if
    print("negative")
else:
    print("zero")

if number == 0:
    print("zero")
else:
    if number > 0:
        print("positive")
    else:
        print("negative")

d = int(imput())
if d == 0: # if d: тут d будет bool - true or false
    print("not zero")
print(d * 4)

a = int(input())
b = 3
print((a+b)**2)

a = 3
b = 4
abs(a - b) == 1 # модуль

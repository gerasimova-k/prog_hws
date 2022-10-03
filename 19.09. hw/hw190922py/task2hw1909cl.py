x = int(input("... руб."))
y = int(input("... коп."))
p = int(input("% годовых"))
deposit_year_1 = 100 * x + y # переводим в копейки
deposit_year_2 = int(deposit_year_1 + (deposit_year_1 * p / 100))
print("Через год сумма составит", deposit_year_2 // 100, "руб.", deposit_year_2 % 100, "коп.")
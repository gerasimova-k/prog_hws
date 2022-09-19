x = int(input("... сек."))
hh = x // 3600
mm = x // 60 % 60
ss = x % 60
print(hh, ":", mm, ":", ss)
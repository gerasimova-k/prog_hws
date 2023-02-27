from colorama import init
init()
from colorama import Fore, Back, Style

with open('C:\\Users\\Женя\\mag2022\\LT\\term02\\01-Modules, OOP\\sentence.conllu', 'r', encoding='utf-8') as infile:
    data = list(map(str.strip, infile.readlines()))

for elem in data:
    elems = elem.split('\t')
    print(Fore.RESET + elems[0], Fore.RESET + elems[1], Fore.BLUE + elems[2],
          Fore.GREEN + elems[3], Fore.RESET + elems[4], Fore.RESET + elems[5],
          Fore.BLUE + elems[6], Fore.YELLOW + elems[7], Fore.BLUE + elems[8],
          Fore.RED + elems[9])
infile.close()

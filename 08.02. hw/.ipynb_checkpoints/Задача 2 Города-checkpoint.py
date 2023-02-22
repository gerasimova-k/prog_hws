import random

from random import choice

class Game:
    def __init__(self):
        self.cities_d = {}
        self.cities_used = set()
        self.collect_cities_d()
        self.last_symbol = ''

    def collect_cities_d(self):
        with open('C:\\Users\\Женя\\Documents\\goroda.txt', 'r', encoding='utf-8') as infile:
            for line in infile:
                line = line.strip().lower()
                if line[0] not in self.cities_d:
                    self.cities_d[line[0]] = []
                self.cities_d[line[0]].append(line.capitalize())

    def find_word(self, last_symbol):
        if last_symbol in self.cities_d:
            if self.cities_d[last_symbol]:
                city = random.choice(self.cities_d[last_symbol])
                self.cities_d[last_symbol].remove(city)
                self.cities_used.add(city)
                return city
        return None

    def start_game(self):
        while True:
            city_of_human = input('Human: ').lower()

            if city_of_human == '':
                print('Игра окончена')
                break

            if self.last_symbol != '' and city_of_human[0] != self.last_symbol:
                print(f'Город {city_of_human.capitalize()} '
                      f'начинается не на букву {self.last_symbol}')
                continue

            if city_of_human in self.cities_used:
                print(f'Не повторяйтесь! Город {city_of_human.capitalize()} уже был')
                continue
                
            no_cities = 'ъыь'
            symbol = city_of_human[-1]
            if symbol in no_cities:
                symbol = city_of_human[-2]

            city_of_computer = self.find_word(symbol)
            if city_of_computer is None:
                print(f'Вы победили! Городов на букву {symbol} больше нет.')
                break

            print('Computer:', city_of_computer)
            self.cities_used.add(city_of_human)
            self.last_symbol = city_of_computer[-1]
            if self.last_symbol in no_cities:
                self.last_symbol = city_of_computer[-2]

game = Game()
game.start_game()
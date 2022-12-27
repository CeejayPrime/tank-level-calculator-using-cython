import time
import tank_formula


instruction = '''
    Choose a tank from the list indicated below from 0 - 5:
    0 = Horizontal Capsule
    1 = Horizontal Cylinder
    2 = Vertical Capsule
    3 = Vertical Cylinder
    4 = Rectangular Tank
    5 = Horizontal Dish
'''
print(instruction)

tank_types = ["Horizontal Capsule", "Horizontal Cylinder", "Vertical Capsule",
              "Vertical Cylinder", "Rectangular Tank", "Horizontal Dish"]
start_program = input("Do you want to start calculating? ")
start_program_response = False
tank_choice = 0
# start_program = 'no'


if start_program == 'yes':
    start_program_response = True

while start_program_response == True:
    tank_choice = int(input("Choose a tank: "))

    if tank_choice == 0:
        print(f"You have selected {tank_types[tank_choice]}, fill in the following values below:")

        if __name__ == "__main__":
            start_calc = time.time()
            result = tank_formula.HorCap()
            print(f"This is the filled volume: {result}")
            duration = time.time() - start_calc
            print(f"Calculation used {duration} seconds to complete")

    if tank_choice == 1:
        print(f"You have selected {tank_types[tank_choice]}, fill in the following values below:")

        if __name__ == "__main__":
            start_calc = time.time()
            result = tank_formula.HorCyl()
            print(f"This is the filled volume: {result}")
            duration = time.time() - start_calc
            print(f"Calculation used {duration} seconds to complete")

    if tank_choice == 2:
        print(f"You have selected {tank_types[tank_choice]}, fill in the following values below:")

        if __name__ == "__main__":
            start_calc = time.time()
            result = tank_formula.VerCap()
            print(f"This is the filled volume: {result}")
            duration = time.time() - start_calc
            print(f"Calculation used {duration} seconds to complete")

    if tank_choice == 3:
        print(f"You have selected {tank_types[tank_choice]}, fill in the following values below:")

        if __name__ == "__main__":
            start_calc = time.time()
            result = tank_formula.VerCyl()
            print(f"This is the filled volume: {result}")
            duration = time.time() - start_calc
            print(f"Calculation used {duration} seconds to complete")

    if tank_choice == 4:
        print(f"You have selected {tank_types[tank_choice]}, fill in the following values below:")

        if __name__ == "__main__":
            start_calc = time.time()
            result = tank_formula.Rectangular()
            print(f"This is the filled volume: {result}")
            duration = time.time() - start_calc
            print(f"Calculation used {duration} seconds to complete")

    if tank_choice == 5:
        print(f"You have selected {tank_types[tank_choice]}, fill in the following values below:")

        if __name__ == "__main__":
            start_calc = time.time()
            result = tank_formula.HorDish()
            print(f"This is the filled volume: {result}")
            duration = time.time() - start_calc
            print(f"Calculation used {duration} seconds to complete")


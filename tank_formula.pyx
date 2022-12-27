import math


def HorCap():
    cdef unsigned long int l = cdef unsigned long int(input("Side Length Dimension: "))
    d = int(input("Diameter Dimension: "))
    f = int(input("Filled Depth: "))
    r = d/2
    e = r - f

    tank_horvol = math.floor((math.pi * r ** 2 * l) / 1000)
    theta = 2 * math.acos(e / r)
    seg_area = 1 / 2 * r ** 2 * (theta - math.sin(theta)) * l / 1000

    if f <= r:
        filled_horvol = math.floor(seg_area)

    elif f > r:
        empty_segment = math.floor(tank_horvol - seg_area)
        filled_horvol = tank_horvol - empty_segment
                
        tank_vol = math.pi * r ** 2 * ((4 / 3) * r + l)
        tank_vol = math.floor(tank_vol / 1000)

        v_sphere = (1 / 3) * math.pi * f ** 2 * (3 * r - f)
        v_sphere = math.floor(v_sphere / 1000)
                    
        filled_vol = v_sphere + filled_horvol

    return filled_vol


def HorCyl():
    l = int(input("Side Length Dimension: "))
    d = int(input("Diameter Dimension: "))
    f = int(input("Filled Depth: "))
    r = d / 2
    e = r - f

    tank_vol = math.floor((math.pi * r ** 2 * l) / 1000)
    theta = 2 * math.acos(e / r)
    seg_area = 1 / 2 * r ** 2 * (theta - math.sin(theta)) * l / 1000

    if f <= r:
        filled_vol = math.floor(seg_area)
        print(filled_vol)
    elif f > r:
        empty_segment = math.floor(tank_vol - seg_area)
        filled_vol = tank_vol - empty_segment

    return filled_vol


def VerCap():
    l = int(input("Tank Length: "))
    d = int(input("Tank Diameter: "))
    f = int(input("Filled Depth: "))
    r = d / 2
    h = l + d
    f_h = h - f

    tank_vol = math.pi * r ** 2 * ((4 / 3) * r + l)
    tank_vol = math.floor(tank_vol / 1000)
    v_sphere = ((1 / 3) * math.pi * f ** 2 * (3 * r - f)) / 1000
    vs_sphere = ((1 / 3) * math.pi * f_h ** 2 * (3 * r - f_h)) / 1000

    if f <= r:
        filled_vol = v_sphere
        filled_vol = math.floor(filled_vol / 1000)

    elif r < f <= (r + l):
        filled_vol = (0.667 * math.pi * r ** 3) + (math.pi * r ** 2 * (f - d / 2))
        filled_vol = math.floor(filled_vol / 1000)

    elif f > (r + l) < h:
        filled_vol = math.floor(tank_vol - vs_sphere)

    return filled_vol


def VerCyl():
    h = int(input("Tank Height: "))
    d = int(input("Tank Diameter: "))
    r = d / 2
    f = int(input("Filled Height: "))
    tank_volume = (3.14 * r ** 2 * h) / 1000
    filled_vol = (3.14 * r ** 2 * f) / 1000

    return filled_vol


def Rectangular():
    h = int(input("Tank Height: "))
    l = int(input("Tank Length: "))
    w = int(input("Tank Width: "))
    f = int(input("Filled Height: "))

    tank_vol = (l * h * w) / 1000
    filled_vol = (l * f * w) / 1000

    return filled_vol


def HorDish():
    l = int(input("Tank Length: "))
    d = int(input("Tank Diameter: "))
    f = int(input("Filled Depth: "))
    r = d / 2
    e = r - f

    tank_vol = math.floor((math.pi * r ** 2 * l) / 1000)
    theta = 2 * math.acos(e / r)
    seg_area = 1 / 2 * r ** 2 * (theta - math.sin(theta)) * l / 1000

    if f <= r:
        filled_vol = math.floor(seg_area)
    elif f > r:
        empty_segment = math.floor(tank_vol - seg_area)
        filled_vol = tank_vol - empty_segment

    return filled_vol
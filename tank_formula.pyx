import math


def HorCap():
    cdef int l = int(input("Side Length Dimension: "))
    cdef int d = int(input("Diameter Dimension: "))
    cdef int f = int(input("Filled Depth: "))
    cdef double r = d/2
    cdef double e = r - f

    cdef double tank_horvol = math.floor((math.pi * r ** 2 * l) / 1000)
    cdef double theta = 2 * math.acos(e / r)
    cdef double seg_area = 1 / 2 * r ** 2 * (theta - math.sin(theta)) * l / 1000

    if f <= r:
        cdef double filled_horvol = math.floor(seg_area)

    elif f > r:
        cdef double empty_segment = math.floor(tank_horvol - seg_area)
        cdef double filled_horvol = tank_horvol - empty_segment
                
        cdef double tank_vol = math.pi * r ** 2 * ((4 / 3) * r + l)
        tank_vol = math.floor(tank_vol / 1000)

        cdef double v_sphere = (1 / 3) * math.pi * f ** 2 * (3 * r - f)
        v_sphere = math.floor(v_sphere / 1000)
                    
        cdef double filled_vol = v_sphere + filled_horvol

    return filled_vol


def HorCyl():
    cdef int l = int(input("Side Length Dimension: "))
    cdef int d = int(input("Diameter Dimension: "))
    cdef int f = int(input("Filled Depth: "))
    cdef double r = d / 2
    cdef double e = r - f

    cdef double tank_vol = math.floor((math.pi * r ** 2 * l) / 1000)
    cdef double theta = 2 * math.acos(e / r)
    cdef double seg_area = 1 / 2 * r ** 2 * (theta - math.sin(theta)) * l / 1000

    if f <= r:
        cdef double filled_vol = math.floor(seg_area)
        print(filled_vol)
    elif f > r:
        cdef double empty_segment = math.floor(tank_vol - seg_area)
        filled_vol = tank_vol - empty_segment

    return filled_vol


def VerCap():
    cdef int l = int(input("Tank Length: "))
    cdef int d = int(input("Tank Diameter: "))
    cdef int f = int(input("Filled Depth: "))
    cdef double r = d / 2
    cdef int h = l + d
    cdef int f_h = h - f

    cdef double tank_vol = (math.pi * r ** 2 * ((4 / 3) * r + l))/1000
    cdef double v_sphere = ((1 / 3) * math.pi * f ** 2 * (3 * r - f)) / 1000
    cdef double vs_sphere = ((1 / 3) * math.pi * f_h ** 2 * (3 * r - f_h)) / 1000

    if f <= r:
        cdef double filled_vol = v_sphere
        filled_vol = math.floor(filled_vol / 1000)

    elif r < f <= (r + l):
        filled_vol = (0.667 * math.pi * r ** 3) + (math.pi * r ** 2 * (f - d / 2))
        filled_vol = math.floor(filled_vol / 1000)

    elif f > (r + l) < h:
        filled_vol = math.floor(tank_vol - vs_sphere)

    return filled_vol


def VerCyl():
    cdef int h = int(input("Tank Height: "))
    cdef int d = int(input("Tank Diameter: "))
    cdef double r = d / 2
    cdef int f = int(input("Filled Height: "))
    cdef double tank_volume = (3.14 * r ** 2 * h) / 1000
    cdef double filled_vol = (3.14 * r ** 2 * f) / 1000

    return filled_vol


def Rectangular():
    cdef int h = int(input("Tank Height: "))
    cdef int l = int(input("Tank Length: "))
    cdef int w = int(input("Tank Width: "))
    cdef int f = int(input("Filled Height: "))

    cdef double tank_vol = (l * h * w) / 1000
    cdef double filled_vol = (l * f * w) / 1000

    return filled_vol


def HorDish():
    cdef int l = int(input("Tank Length: "))
    cdef int d = int(input("Tank Diameter: "))
    cdef int f = int(input("Filled Depth: "))
    cdef double r = d / 2
    cdef int e = r - f

    cdef double tank_vol = math.floor((math.pi * r ** 2 * l) / 1000)
    cdef double theta = 2 * math.acos(e / r)
    cdef double seg_area = 1 / 2 * r ** 2 * (theta - math.sin(theta)) * l / 1000

    if f <= r:
        cdef double filled_vol = math.floor(seg_area)
    elif f > r:
        cdef double empty_segment = math.floor(tank_vol - seg_area)
        filled_vol = tank_vol - empty_segment

    return filled_vol
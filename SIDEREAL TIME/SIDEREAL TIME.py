import math

Y = float(input("Enter the years: "))
M = float(input("Enter the month: "))
D = float(input("Enter the day: "))
h = float(input("Enter UT hour: "))
m = float(input("Enter UT min: "))
s = float(input("Enter UT s: "))

print("---------------------------------------")

# To calc the J0
J0 = (367*Y) - int((7*(Y + int((M + 9) / 12))) / 4) + int(275*M / 9) + D + 1721013.5
print("J0 =", J0)

print("---------------------------------------")

# To calc the UT
UT = h + (m / 60) + s / 3600
print("UT =", UT)
print("---------------------------------------")

# To calc the JD
JD = J0 + (UT / 24)
print("JD =", JD)

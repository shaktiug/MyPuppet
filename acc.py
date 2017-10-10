#Script that calculates the acceleration
v1 = int(input("Enter the initial velocity\n"))
v2 = int(input("Enter the final velocity\n"))
t1 = int(input("Enter the start time\n"))
t2 = int(input("Enter the end time\n"))
a = (v2 - v1)/(t2 - t1)
print("Acceleration calculated is",a)

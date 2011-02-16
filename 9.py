# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2
# 
# For eaample, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# what if we only track a and b, calc c, and wait for it to get close to 1000?

limit = 1000
for i in range(1, limit):
    if (500000-1000*i)%(1000-i) == 0:
        b = i
        a = (500000 - 1000*b)/(1000 - b)
        c = 1000 - a - b
        print "a = %d, b = %d, c = %d" %(a, b, c)
        print "product is %d" %(a*b*c)
        break
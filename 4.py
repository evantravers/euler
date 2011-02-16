def checkP(n):
    string = str(n)
    while len(string):
        if string[0] == string[-1]:
            string = string[1:-2]
        else:
            return 0
    return 1
    
x = 999
y = 999
p = 0

while x > 0:
    y = 999
    while y > 0:
        z = x*y
        # print z
        if checkP(z)==1:
            if z > p:
                p = z
        y-=1
        # print "x: ", x, "y: ", y
    x-=1
    
print(p)
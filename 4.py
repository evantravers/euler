def checkP(n):
    string = str(n)
    while len(string):
        if string[0] == string[-1]:
            string = string[1:-1]
        else:
            return False
    return True
    
x = 999
y = 999
p = 0

while x > 1:
    y = 999
    while y > 1:
        z = x*y
        # print z
        if checkP(z)==True:
          if z > p:
              p = z
        y-=1
        # print "x: ", x, "y: ", y
    x-=1
    
print(p)
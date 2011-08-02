x = 20
con = 1
while con:
    y = 19
    while y > 0:
        if y == 1:
            print(x)
            con = 0
            break
        # print "checking ", x, "/", y
        if x%y==0:
            y-=1
        else:
            break
    # print x
    x+=20

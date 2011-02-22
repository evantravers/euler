# fibonacci problem
largest = 0
F1 = 1
F2 = 1
counter = 3
while len(str(largest)) <= 1000:
	f = F1 + F2
	if len(str(f)) > len(str(largest)):
		largest = f
		largestX = counter
	tmp = F1
	F1 = f
	F2 = tmp
	counter +=1
print largestX 

# name score problem
import string
alpha = list(string.uppercase)
File = open("names.txt")
for line in File:
	a = line 

list = a.split('","')
# clean up list
list[0] = list[0][1:]
list[-1] = list[-1][:-1]
# sort the list
list.sort()

counter = 1
total = 0
for name in list:
	subtot = 0
	# time to compute name score
	for letter in name:
		# compute it's letter score
		subtot += alpha.index(letter)+1
	# compute total 
	total += subtot*counter
	counter+=1
print total

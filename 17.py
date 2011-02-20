# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# 
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
# 
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

ones = ('zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven' , 'eight', 'nine')
teens = ('ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen')
tens = ('ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety')
higher = ('hundred', 'thousand')

def write(n):
  n = str(n)
  r = ''
  higherorder=False
  tensorder=False
  counter = len(n)
  while len(n) > 0:
    if len(n)==4:
      r+=ones[int(n[0])]+ ' thousand '
      higherorder=True
      n = n[1:]
    if len(n)==3:
      if n[0] != '0':
        r+=ones[int(n[0])]+ ' hundred '
        higherorder=True
      n = n[1:]
    if len(n)==2:
      if higherorder & ((n[0]!='0') or (n[1]!='0')):
        r+= 'and '
      # have to check for teens to start with
      if (n[-2]=='1'):
        r += teens[int(n[-1])]
        n = n[2:]
      # now have check for sub hundreds
      else:
        if (n[0]!='0'):
          r += tens[int(n[-2])-1]
          tensorder = True
        n=n[1:]
    if len(n)==1:
      if n[0] != '0':
        if tensorder:
          r+='-'
        r +=ones[int(n[0])]
      break
  return r
  
# this version makes a string without the spaces or hypthens
def s_write(n):
  n = str(n)
  r = ''
  higherorder=False
  tensorder=False
  counter = len(n)
  while len(n) > 0:
    if len(n)==4:
      r+=ones[int(n[0])]+ 'thousand'
      higherorder=True
      n = n[1:]
    if len(n)==3:
      if n[0] != '0':
        r+=ones[int(n[0])]+ 'hundred'
        higherorder=True
      n = n[1:]
    if len(n)==2:
      if higherorder & ((n[0]!='0') or (n[1]!='0')):
        r+= 'and'
      # have to check for teens to start with
      if (n[-2]=='1'):
        r += teens[int(n[-1])]
        n = n[2:]
      # now have check for sub hundreds
      else:
        if (n[0]!='0'):
          r += tens[int(n[-2])-1]
          tensorder = True
        n=n[1:]
    if len(n)==1:
      if n[0] != '0':
        if tensorder:
          r+=''
        r +=ones[int(n[0])]
      break
  return r
  
# main
r=''
for i in xrange(1, 1001):
  print write(i)
  r+=s_write(i)     
print len(r)
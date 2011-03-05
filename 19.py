# You are given the following information, but you may prefer to do some research for yourself.
# 
#     1 Jan 1900 was a Monday.
#     Thirty days has September,
#     April, June and November.
#     All the rest have thirty-one,
#     Saving February alone,
#     Which has twenty-eight, rain or shine.
#     And on leap years, twenty-nine.
#     A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# 
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

# ERROR: this answer is off by one, and I can't find it. I guessed that it was off by one, but I don't know where it is. :P

months = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
days = ('Sun', 'Mon', 'Tues', 'Wed', 'Thurs', 'Fri', 'Sat')
whichday = 2
day = 1
month = 1
year = 1901
sundays = 0

while (year<2000) or month!=12 or day!=31:
  # print "%s\t%d/%d/%d" % (days[whichday-1], month, day, year)
  
  # is it a sunday?
  if whichday == 1 and day == 1:
    sundays+=1
    
  if whichday == 7:
    whichday = 1
  else:
    whichday += 1
  
  # lets increment the calendar
  if day < months[month-1]:      
    day += 1
  else:
    # special case for leap years
    if (day == 28 and month == 2 and year % 4 == 0):
      day += 1
    else:
      day = 1
      if month < 12:
        month += 1
      else:
        month = 1
        year += 1 
  
print sundays

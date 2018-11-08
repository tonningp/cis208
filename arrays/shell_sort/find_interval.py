#!/usr/bin/python3
length = 1000
interval = 0
while interval < length /3:
    interval = interval * 3 + 1

while interval > 0:
    print(interval)
    interval = (interval-1)/3

#! /usr/bin/ruby -w

#Requirements
#Nmap a range and save as XML, grepable, and normal outputs

#Syntax Skeleton
#nmap <ip range 1> <ip range 2> -oA task1

iprange1 = "172.16.10.0/24"
iprange2 = "172.16.11.0/24"

exec("nmap #{iprange1} #{iprange2} -oA task1")

#Credits
#https://nmap.org/book/man-output.html
#Stackoverflow


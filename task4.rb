#! /usr/bin/ruby -w
require 'optparse'

#Requirements
#Parse port numbers from previous
#Use exception handling when necessary
#add a help page

OptionParser.new do |opts|
	opts.banner = "Usage: task2 [options]"
	opts.on('-h', '--help', 'Display this help') do 
		puts opts
		puts "Please edit the <filename> field in the script to change functionality"
		exit
	end
end.parse!

filename = "X.nmap"

if File.file?(filename)
	exec(cat task1.nmap | grep "/" | grep open | cut -d "/" -f 1 | sort -n)
else
	puts "Invalid input file name/path"
end
#Credits
#optionparser skeleton from stackoverflow


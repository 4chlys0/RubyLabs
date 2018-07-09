#! /usr/bin/ruby -w
require 'optparse'

#Requirements
#Parse IP addresses from previous
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

#handle I/O exception with if
if File.file?(filename)
	exec("cat #{filename} | grep report | cut -d \" \" -f 5 > task2.txt")
else
	puts "Invalid input file name/path"
end

#Credits
#optionparser skeleton from stackoverflow


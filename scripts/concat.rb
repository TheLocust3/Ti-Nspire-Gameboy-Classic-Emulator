require 'fileutils'
require 'rbconfig'

path = File.expand_path(File.dirname(File.dirname(__FILE__))) + "/"

dirname = File.dirname(path + "release")
unless File.directory?(path + "release")
  FileUtils.mkdir_p(path + "release")
end

program = ""
files = [path + "rom.lua", path + "header.lua", path + "bitwise.lua", path + "graphics.lua", path + "memory.lua", path + "dispatcher.lua", path + "helperFunctions.lua", path + "opcodes.lua"]

if ARGV[0] == "-a"
	if File.file?(ARGV[1])
		files[files.length] = ARGV[1]
	else
		puts ARGV[1] + " is not a file"
		exit
	end
elsif ARGV[0] == "-r"
	files[files.length] = path + "main.lua"
elsif ARGV[0] == "-c"
	files[files.length] = path + "calc.lua"
elsif ARGV[0] == "-t"
	files[files.length] = path + "calc.lua"
	files[files.length] = path + "calcTest.lua"
elsif ARGV[0] != nil
	puts "Unkown arguemnt " + ARGV[0]
	exit
end

for i in files
	f = File.open(i, "r")

	f.each_line do |line|
		program += line
	end

	f.close

	program += "\n\n"
end

out = File.open(path + "release/full.lua", 'w')
out.puts(program)
out.close

if RbConfig::CONFIG['host_os'].include?("darwin") # OS must be Mac OS X
	release = path + "/release/full.lua"
	`cat #{release} |pbcopy`

	puts "File have been combined into full.lua and copied to clipboard"
else
	puts "Files have been combined into full.lua"
end
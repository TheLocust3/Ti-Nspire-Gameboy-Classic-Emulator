program = ""
files = ["rom.lua", "header.lua", "bitwise.lua", "dispatcher.lua", "helperFunctions.lua", "opcodes.lua"]

if ARGV[0] == "-a"
	if File.file?(ARGV[1])
		files[6] = ARGV[1]
	else
		puts ARGV[1] + " is not a file"
		exit
	end
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

out = File.open("full.lua", 'w')
out.puts(program)
out.close

puts "Files have been combined into full.lua"
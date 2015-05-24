require 'fileutils'
require 'pathname'

path = File.expand_path(File.dirname(File.dirname(__FILE__))) + "/"

tests = Dir[path + "tests/*"]

for file in tests
	if File.basename(file) != "success"
		rubyFile = path + "scripts/concat.rb -a " + file
		`ruby #{rubyFile}`

		luaFile = path + "release/full.lua"
		output = `lua #{luaFile}`
		basename = File.basename(file) + ":"

		found = false
		success = File.open(path + "/tests/success", 'r')

		success.each_line do |line|
			if found == true
				if line.chomp == output.chomp + ";"
					puts basename + " has passed"
				else
					puts basename + " has failed"
				end

				break
			end

			if line.chomp == basename
				found = true
			end
		end

		success.close()
	end
end
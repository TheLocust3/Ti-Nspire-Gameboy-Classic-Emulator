require 'fileutils'
require 'pathname'

path = File.expand_path(File.dirname(File.dirname(__FILE__))) + "/"

tests = Dir[path + "tests/*"]
success = File.open(path + "/tests/success", 'r')

for file in tests
	if !file.include?("success")
		rubyFile = path + "scripts/concat.rb -a " + file
		`ruby #{rubyFile}`

		luaFile = path + "release/full.lua"
		output = `lua #{luaFile}`
		basename = File.basename(file) + ":"

		found = false
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
	end
end

success.close()
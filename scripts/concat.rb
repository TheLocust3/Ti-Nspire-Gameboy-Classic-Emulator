require 'fileutils'
require 'rbconfig'

path = File.expand_path(File.dirname(File.dirname(__FILE__))) + "/"

dirname = File.dirname(path + "release")
unless File.directory?(path + "release")
  FileUtils.mkdir_p(path + "release")
end

program = ""
files = [path + "bitwise.lua", path + "rom.lua", path + "flag.lua", path + "interrupt.lua", path + "memory.lua", path + "graphics.lua", path + "draw.lua", path + "debug.lua", path + "helperFunctions.lua", path + "header.lua", path + "opcodes.lua", path + "dispatcher.lua"]

require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: example.rb [options]"
  options[:copy] = true

  opts.on("-c", "--calculator", "Append code to run on a calculator") do
    files << path + "calc.lua"
  end
  
  opts.on("-t", "--test", "Append testing code (only for use on a calculator)") do
    if !files.include?(path + "calc.lua")
      files << path + "calc.lua"
    end

    files << path + "calcTest.lua"
  end

  opts.on("-a FILENAME", "--addfile FILENAME") do |file|
    if File.file?(file)
      files[files.length] = file 
    else
      puts file + " is not a file"
      exit
    end
  end

  opts.on("-r", "--r", "Append testing code for terminal (not implemented)") do
    files << path + "main.lua"
  end

  opts.on("-n", "--nocopy", "Don't copy output to clipboard") do
    options[:copy] = false
  end
end.parse!

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

if options[:copy] && RbConfig::CONFIG['host_os'].include?("darwin") # OS must be Mac OS X
  release = path + "/release/full.lua"
  `cat #{release} |pbcopy`

  puts "File have been combined into full.lua and copied to clipboard"
else
  puts "Files have been combined into full.lua"
end

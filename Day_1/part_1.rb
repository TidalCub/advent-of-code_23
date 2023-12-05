filter = /[A-Za-z]/
running_total = 0
File.foreach("input.txt") do |line|
  puts line
  numbers = line.gsub(filter, '').chomp.split('')
  running_total +=  "#{numbers[0]}#{numbers[-1]}".to_i
end
puts running_total


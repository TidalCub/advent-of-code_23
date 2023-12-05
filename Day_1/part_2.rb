running_total = 0
dict = {
  "one" => 1,
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
  "six" => 6,
  "seven" => 7,
  "eight" => 8,
  "nine" => 9
}
filter = /[A-Za-z]/
running_total = 0

File.foreach("input.txt") do |line|
  line_hash = {}
  line.chomp.split('').each_with_index do |char, index|
    if char.to_i.to_s == char
      line_hash[index] = char
    end
  end
  dict.each do |key, value|
    if line.match(key)
      line_hash[line.index(key)] = value
    end
  end
  just_numbers = line_hash.sort.map{|k,v| "#{v}"}.join("")
  puts "#{line.chomp} ->>> #{just_numbers} ->>> #{"#{just_numbers[0].to_i}#{just_numbers[-1].to_i}".to_i}" 
  running_total += "#{just_numbers[0].to_i}#{just_numbers[-1].to_i}".to_i
  puts running_total
end
puts running_total
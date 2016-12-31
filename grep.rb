exp = ARGV[0]
file_path = ARGV[1]

File.open(file_path, "r") do |f|
  line_no = 0
  f.each_line do |line|
    line_no += 1
    if line.match(Regexp.new(exp))
      puts "#{line_no}: #{line}"
    end
  end
end

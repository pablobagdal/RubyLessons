# encoding: UTF-8

puts "Привет. Я твой дневник. Скажи, что у тебя на уме"
puts "Я сохраню всё, что ты напишешь, до строчки \"end\"."
puts ""

current_path = File.dirname(__FILE__)

line = nil
all_lines = []

until line == "end" do
  line = $stdin.gets.encode("UTF-8").chomp
  all_lines << line
end

time = Time.now

file_name = time.strftime("%Y-%m-%d") # 2022-12-22

time_string = time.strftime("%H:%M") # 22:58

separator = "\n\r-------------------------------------\n\r"

file = File.new(current_path + '/' + file_name + '.txt', "a:UTF-8")
file.print("\n\r" + time_string + "\n\r")

# delete "end"
all_lines.pop

for item in all_lines do
 file.puts(item)
end

file.close

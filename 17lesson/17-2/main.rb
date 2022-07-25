current_path = File.dirname(__FILE__)

file_names = Dir["#{current_path}/data/*.txt"]

face = file_names.map do |file_name|
  File.readlines(file_name).sample.chomp
end

time = Time.now

file_name = time.strftime("face_%d-%m-%y_%H-%M")
file = File.new("#{current_path}/#{file_name}.txt", "a:UTF-8")

face.each {|line| file.print("#{line}\r\n")}

file.close

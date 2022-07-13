current_path = File.dirname(__FILE__)

forehead = File.readlines("#{current_path}/lib/foreheads.txt").sample
eyes = File.readlines("#{current_path}/lib/eyes.txt").sample
nose = File.readlines("#{current_path}/lib/noses.txt").sample
mouth = File.readlines("#{current_path}/lib/mouths.txt").sample

time = Time.now

file_name = time.strftime("face_%d-%m-%y_%H-%M")

file = File.new("#{current_path}/#{file_name}.txt", "a:UTF-8")

file << forehead << eyes << nose << mouth

file.close

current_path = File.dirname(__FILE__)

file_names = %w[foreheads.txt eyes.txt noses.txt mouths.txt]

file_name = "#{Time.now.strftime("%Y.%m.%d_%H-%M-%S")}_face.txt"

faces =
  Dir[File.join(__dir__, "data", "*.txt")].map do |file_name|
    File.readlines(file_name, chomp: true).sample
  end

face_file = File.new(file_name, "w:UTF-8")
face_file.puts(faces)
face_file.close

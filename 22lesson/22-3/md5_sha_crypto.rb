require 'digest'

message = "hello"
message_in_sha256 = Digest::SHA1.hexdigest message
message_in_md5 = Digest::MD5.hexdigest message

puts "message: \"#{message}\""
puts "SHA256: \"#{message_in_sha256}\""
puts "MD5: \"#{message_in_md5}\""


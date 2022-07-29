require 'digest'

Digest::SHA256.digest 'message'       #=> "\xABS\n\x13\xE4Y..."

md5 = Digest::MD5.new
md5.update 'message1'
md5 << 'message2'                     # << is an alias for update

md5.hexdigest

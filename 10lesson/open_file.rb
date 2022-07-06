# f = File.new('./data/quotes.txt','r:UTF-8')

# content = f.read

# puts content

# --------------------------------------------------------

if File.exist?('./data/quotes.txt')
  f = File.new('./data/quotes.txt','r:UTF-8')
  content = f.read
  puts content
else
  puts('File is not found')
end

# --------------------------------------------------------

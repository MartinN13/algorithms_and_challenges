require "open-uri"

n = "000"

puts "Enter album url:"
url = gets.chomp()
url = url.chomp('001.jpg')

200.times {
  open(url + "#{n.next!}.jpg") {|f|
     File.open(url.split('/')[-1] + "#{n}.jpg","wb") do |file|
       file.puts f.read
     end
  }
  puts url.split('/')[-1] + "#{n}.jpg"
}
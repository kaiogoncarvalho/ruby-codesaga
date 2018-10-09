array = ['text', 0, [1,2,3], 'outro texto', 7, 8, 9, 10]
puts array

puts array.[](1).to_s

puts array[2][1].to_s

puts array.[](10)

puts array[5, 3]

array << 50
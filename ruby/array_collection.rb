scores = [86, 88, 90, 96, 98]

puts "* print the all scores"
scores.each do |i|
  puts i
end

new_scores = scores.map do |i|
  i + 1
end
puts "* print old scores +1 "
puts new_scores

new_scores = scores.select do |i|
  i > 90
end
puts "* print > 90 "
puts new_scores

new_scores = scores.map.reject do |i|
  i > 90
end
puts "* print not > 90"
puts new_scores

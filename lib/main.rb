require 'item'
Item.load_item_data.each do |item|
  print_line = item.to_s
  print_line.gsub!(/book/, 'fiction \0') if item.id =~ /\AB[FN]/
  print_line.gsub!(/fiction/, 'non-\0') if item.id =~ /\ABN/
  puts print_line
end
puts "\n"

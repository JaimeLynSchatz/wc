#!/usr/bin/ruby

line1 = "Cats are smarter than dogs"
line2 = "Dogs also like meat"

if ( line1 =~ /Cats(.*)/ )
  puts "Line1 contains Cats"
end
if ( line2 =~ /Cats(.*)/ )
  puts "Line2 contains Dogs"
end

line3 = "<h1>This is a test</h2>"

if ( line3 =~ %r[<*>]i )
  puts "You've got tags."
else
  puts "Your tags are showing: #{line3}"
end

line3 = line3.gsub( %r[<.*?>]im, " ")
puts line3

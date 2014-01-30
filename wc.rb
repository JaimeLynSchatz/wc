input_text = "The quick brown fox jumped over the lazy dog. And then the sun shone down on everyone and the little girl smiled. This is the end of this story, this is the end of this story."

word_count = {}
File.open( ARGV[0]? ARGV[0] : 'default.txt', 'r' ) do |f1|
  while line = f1.gets
    tagless_line = line.gsub( %r[<.*?>]im, " ")
    words = tagless_line.split(" ")

    words.each do |word|
      word = word.downcase
      if !word_count.has_key?(word)
        word_count[word] = 1
      else
        word_count[word] += 1
      end
    end
  end
end

# I left off here: 
# there's more on nettuts+, too
# (?<=\<[a-z])\w+ uses a lookbehind to make sure
# there's a bracket with a letter before it - but doesn't include the bracket and the letter
# I'm very very close - just not here yet.
# see the website rubular.com to see how it works
# it's capturing the stuff in the middle but I need
# to get the expression to leave the middle text alone
# I'll muddle on it and work it out

#words = input_text.split(" ")
#word_count = {}

#words.each do |word|
#  if word_count.has_key?(word)
#    word_count[word] += 1
#  else
#    word_count[word] = 1
#  end  
#end

puts word_count.inspect

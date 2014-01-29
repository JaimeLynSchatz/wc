input_text = "The quick brown fox jumped over the lazy dog. And then the sun shone down on everyone and the little girl smiled. This is the end of this story, this is the end of this story."

word_count = {}
File.open( ARGV[0]? ARGV[0] : 'default.txt', 'r' ) do |f1|
  while line = f1.gets
    words = line.split(" ")

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

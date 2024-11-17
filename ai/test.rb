def get_most_common_words()
  message = "hello"
  q1 = File.read("question1.txt").split("|")
  q2 = File.read("question2.txt").split("|")
  q3 = File.read("question3.txt").split("|")
  
  a1 = File.read("answer1.txt").split("|")
  a2 = File.read("answer2.txt").split("|")
  a3 = File.read("answer3.txt").split("|")


  list = {}
  message = message.split(" ")
  q1.each_with_index do |q, inx|
    points = 0
    message.each do |word|
      if q.include?(word)
        points += 1
      end
    end
    if points != 0
      list[inx] = points
    end
  end
  puts list.inspect
  list.each do |key, value|
    puts "key: " + key.to_s
    puts "value: " + value.to_s
    puts
  end
end
get_most_common_words
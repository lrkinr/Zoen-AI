def get_most_common_words(message)
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
      list.store[:points, indx]
    end
  end

end











def talk
  while true
    system("cls")
    print "you: "
    message = gets.chomp
    print "ai: "
    return get_most_common_words(message)
  end
end
talk
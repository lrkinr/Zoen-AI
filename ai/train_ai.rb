def train
  while true

    #getting all questions
    puts "enter a question"
    question1 = gets.chomp
    system("cls")
    puts "enter two other ways to say that"
    question2 = gets.chomp
    question3 = gets.chomp
    system("cls")

    #getting all answers
    puts "enter an answer"
    answer1 = gets.chomp
    system("cls")
    puts "enter two other ways to say that"
    answer2 = gets.chomp
    answer3 = gets.chomp
    system("cls")

    #add them to their files
    File.open("question1.txt", "a") do |file|
      file.puts "#{question1}|"
    end

    File.open("question2.txt", "a") do |file|
      file.puts "#{question2}|"
    end

    File.open("question3.txt", "a") do |file|
      file.puts "#{question3}|"
    end

    File.open("answer1.txt", "a") do |file|
      file.puts "#{answer1}|"
    end

    File.open("answer2.txt", "a") do |file|
      file.puts "#{answer2}|"
    end

    File.open("answer3.txt", "a") do |file|
      file.puts "#{answer3}|"
    end

    system("cls")
    puts "successfully added to database"
    sleep 1.5
    system("cls")
  end
end

train
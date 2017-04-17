class Student 

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def get_student_to_talk(name)
    return "I am #{name} and I want to learn to code!"
  end

  def favourite_language(language)
    puts "What is your favourite programming language?"
    language = gets.chomp.capitalize
    return "I love #{language}!"
  end

end

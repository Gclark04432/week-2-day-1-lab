class Student

attr_accessor :name, :cohort, :language

def initialize(name, cohort, language)
  @name = name
  @cohort = cohort
  @language = language
end

def talk()
  return "I can talk!"
end

def students_favourite_language()
  return "I Love #{@language}"
end

end

class Student


def initialize(name, cohort)
 @name = name
 @cohort = cohort
end

  def student_name()
    return @name
  end

  def student_cohort()
    return @cohort
  end

  def set_student_name(name)
    @name = name
  end

  def set_student_cohort(cohort)
    @cohort = cohort
  end

  def talking_student(talking)
    return talking
  end

  def favourite_programme(favourite_programme)
    return ("I Love #{favourite_programme}")
  end
end

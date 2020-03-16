require('minitest/autorun')
require('minitest/reporters')
require_relative('../student_home')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestStudent < MiniTest::Test

def setup()
  @studentid = Student.new("John", "G18")
end

  def test_student_name()
    # student_id = Student.new("John", "G18")
    assert_equal("John", @studentid.student_name())
  end

  def test_student_cohort()
    assert_equal("G18", @studentid.student_cohort())
  end

  def test_set_student_name()
    @studentid.set_student_name("Rachel")
    assert_equal("Rachel", @studentid.student_name())
  end

  def test_set_student_cohort()
    @studentid.set_student_cohort("G100")
    assert_equal("G100", @studentid.student_cohort())
  end

  def test_talking_student()
    talking = @studentid.talking_student("I can talk")
    assert_equal("I can talk", talking)
    end

    def test_favourite_programme()
      favourite_programme = @studentid.favourite_programme("Ruby")
      assert_equal("I Love Ruby", favourite_programme)
    end

  end

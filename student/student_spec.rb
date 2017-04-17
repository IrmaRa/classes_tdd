require('minitest/autorun')
require('minitest/pride')
require_relative('./student')

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Irma", 12)  
  end

  def test_student_name
    assert_equal("Irma", @student.name)
  end

  def test_cohort_number
    assert_equal(12, @student.cohort)
  end

  def test_set_student_name
    @student.set_name("IrmaR")
    assert_equal("IrmaR", @student.name)
  end

  def test_set_student_cohort
    @student.set_cohort(11)
    assert_equal(11, @student.cohort)
  end

  def test_get_student_to_talk
    answer = @student.get_student_to_talk("Irma")
    assert_equal("I am Irma and I want to learn to code!", answer)
  end

  def test_favourite_language
    language_name = @student.favourite_language("Ruby")
    assert_equal("I love Ruby!", language_name)
  end

end

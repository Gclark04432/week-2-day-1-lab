require ('minitest/autorun')
require ('minitest/reporters')
require_relative ('../lab_part_a')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < Minitest::Test

  def test_can_get_student_details
    student = Student.new("Silvia", "E36")
    assert_equal("Silvia", student.name())
    assert_equal("E36", student.cohort())
  end

  def test_can_change_student_details
    student = Student.new("Silvia", "E36")
    student.name = "Gary"
    student.cohort = "E35"

    assert_equal("E35", student.cohort())
    assert_equal("Gary", student.name())
  end


end

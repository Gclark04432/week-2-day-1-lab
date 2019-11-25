require ('minitest/autorun')
require ('minitest/reporters')
require_relative ('../lab_part_a')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < Minitest::Test

  def test_can_get_student_name
    student = Student.new("Silvia", "E36")
    assert_equal("Silvia", student.name())
  end



end

require('minitest/autorun')
require('minitest/rg')
require_relative('../student_class.rb')


class TestStudentsClass < MiniTest::Test


  def test_student_class_name
    student_class = Student.new("Marc", "e35")
    assert_equal("Marc", student_class.get_name)
  end

  def test_student_class_cohort
    student_class = Student.new("Richard", "e35")
    assert_equal("e35", student_class.get_cohort)
  end

  def test_student_class_set_name
    student_class = Student.new("Yana", "e35")
    student_class.set_name("Jim")
    assert_equal("Jim",student_class.get_name)
  end

  def test_student_class_set_cohort
    student_class = Student.new("Aresky", "e35")
    student_class.set_cohort("e36")
    assert_equal("e36",student_class.get_cohort)
  end

  def test_student_class_talk
    student_class = Student.new("Iain", "e35")
    phrase = student_class.talk("Hello it's me ")
    assert_equal("Hello it's me Iain", phrase)
  end

  def test_student_class_language
    student_class = Student.new("Iain", "e35")
    language = student_class.fav_language("plain English")
    assert_equal("My favourite language is plain English", language)
  end

end

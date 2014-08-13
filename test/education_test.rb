require 'minitest/autorun'
require_relative '../content/education'

class EducationTopicTest < Minitest::Test
  def test_valid_record
    topic = EducationTopic.new 'math', 4.0
    assert_equal true, topic.valid?
  end

  def test_topic_must_have_name
    assert_raises(EducationTopic::InvalidRecord) do
      EducationTopic.new nil, 4.0
    end
  end

  def test_topic_must_have_gpa
    assert_raises(EducationTopic::InvalidRecord) do
      EducationTopic.new 'math', nil
    end
  end

  def test_gpa_is_at_most_4
    assert_raises(EducationTopic::InvalidRecord) do
      EducationTopic.new 'math', 4.1
    end
  end

  def test_gpa_is_at_least_0
    assert_raises(EducationTopic::InvalidRecord) do
      EducationTopic.new 'math', -0.1
    end
  end

  def test_gpa_is_displayed_to_one_digit
    topic = EducationTopic.new 'math', '3.85'
    assert_equal '3.9', topic.formatted_gpa
  end
end

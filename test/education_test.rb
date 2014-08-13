require 'minitest/autorun'
require_relative '../content/education'

class EducationTopicTest < Minitest::Test
  def test_valid_record
    topic = Education::Topic.new 'math', 4.0
    assert_equal true, topic.valid?
  end

  def test_topic_must_have_name
    assert_raises(Education::Topic::InvalidRecord) do
      Education::Topic.new nil, 4.0
    end
  end

  def test_topic_must_have_gpa
    assert_raises(Education::Topic::InvalidRecord) do
      Education::Topic.new 'math', nil
    end
  end

  def test_gpa_is_at_most_4
    assert_raises(Education::Topic::InvalidRecord) do
      Education::Topic.new 'math', 4.1
    end
  end

  def test_gpa_is_at_least_0
    assert_raises(Education::Topic::InvalidRecord) do
      Education::Topic.new 'math', -0.1
    end
  end

  def test_gpa_is_displayed_to_one_digit
    topic = Education::Topic.new 'math', '3.85'
    assert_equal '3.9', topic.formatted_gpa
  end

  def test_topic_storage
    topic = Education::Topic.new 'math', '3.85'
    topic.save
    assert_equal [topic], Education::Topic.all
    Education::Topic.destroy_all
    assert_equal [], Education::Topic.all
  end
end

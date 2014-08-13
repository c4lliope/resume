require 'minitest/autorun'
require_relative '../content/skill'

class SkillTest < Minitest::Test
  def test_valid_record
    skill = Skill.new 'ruby', 5, 'ruby'
    assert_equal true, skill.valid?
  end

  def test_skill_must_have_name
    assert_raises(Skill::InvalidRecord) do
      Skill.new nil, 5, 'ruby'
    end
  end

  def test_name_is_titlecased
    skip
    skill = Skill.new 'rare skill', 5
    assert_equal 'Rare Skill', skill.name
  end

  def test_skill_must_have_level
    assert_raises(Skill::InvalidRecord) do
      Skill.new 'ruby', nil, 'ruby'
    end
  end

  def test_level_is_at_most_5
    assert_raises(Skill::InvalidRecord) do
      Skill.new 'ruby', 6, 'ruby'
    end
  end

  def test_level_is_at_least_1
    assert_raises(Skill::InvalidRecord) do
      Skill.new 'ruby', 0, 'ruby'
    end
  end

  def test_level_is_integer
    skill = Skill.new 'ruby', 4.3, 'ruby'
    assert_equal 4, skill.level
  end

  def test_skill_has_default_icon_based_on_name
    skill = Skill.new 'Ruby', 5
    assert_equal 'ruby', skill.icon
  end

  def test_icon_must_be_available
    assert_raises(Skill::IconNotAvailable) do
      Skill.new 'ruby', 5, 'nonexistanticon'
    end
  end

  def test_skill_storage
    skip
    skill = Skill.new 'ruby', 5, 'ruby'
    skill.save
    assert_equal [skill], Skill.all
    Skill.destroy_all
    assert_equal [], Skill.all
  end
end

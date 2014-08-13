class Skill
  class InvalidRecord < StandardError; end
  class IconNotAvailable < StandardError; end

  def self.store
    @@store ||= []
  end

  def self.all
    store
  end

  def save
    self.class.store << self
    self
  end

  def self.destroy_all
    @@store = nil
  end

  def self.sorted
    all.sort_by(&:level).reverse
  end

  def initialize name, level, icon=nil
    @name, @level, @icon = name, level, icon

    raise InvalidRecord unless valid?
    raise IconNotAvailable unless icon_available?
  end

  attr_reader :name

  def valid?
    name_present? && valid_level?
  end

  def level
    @level.to_i
  end

  def icon
    @icon || @name.downcase
  end

  private

  def name_present?
    name
  end

  def valid_level?
    level >= 1 && level <= 5
  end

  def icon_available?
    File.exist? "#{icon_dir}/#{icon}.svg"
  end

  def icon_dir
    File.expand_path("../../public", __FILE__)
  end
end

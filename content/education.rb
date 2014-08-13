require_relative 'persistance'

module Education
  class Topic
    class InvalidRecord < StandardError; end
    include Persistance

    def initialize name, gpa, tags=nil
      @name, @gpa, @tags = name, gpa, tags.to_s

      raise InvalidRecord unless valid?
    end

    attr_reader :name, :tags

    def gpa
      @gpa.to_f
    end

    def formatted_gpa
      "%.1f" % gpa
    end

    def valid?
      valid_name? and valid_gpa?
    end

    private

    def valid_name?
      name
    end

    def valid_gpa?
      @gpa && gpa >= 0 && gpa <= 4
    end
  end
end

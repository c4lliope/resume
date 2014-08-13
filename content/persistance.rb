module Persistance
  def self.included(base)
    base.extend DataStore
  end

  def save
    self.class.store << self
  end

  module DataStore
    def all
      store
    end

    def store
      @@store ||= []
    end

    def destroy_all
      @@store = nil
    end
  end
end

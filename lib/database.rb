class Database
  class << self

    ##
    # Returns a list of all objects that inherited from Database
    #
    def all
      ObjectSpace.each_object(Class).select { |klass| klass < self }
    end

  end
end

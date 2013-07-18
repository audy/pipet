##
# Database
#
# Creates a DSL for defining Databases
# which can be downloaded using `pipet pull`
#

class Database

  class << self

    ##
    # Specify the URL of a database
    #
    def url(url=nil)
      @url ||= url
    end

    ##
    # Specify MD5 checksum of database
    #
    def md5(val=nil)
      @md5 ||= val
    end

    ##
    #  Provide a description for the database
    #
    def description(val=nil)
      @description ||= val
    end

    ##
    # Name the database. This is used be `pipet pull`
    #
    def name(val=nil)
      @name ||= val
    end

    ##
    # Define type of database. This is like a tag.
    # For example,
    #
    # type :nucleotide
    # for a database of nucleotide sequences
    #
    # type :structure
    # for a database of protein structures
    #
    def type(val=nil)
      @type ||= val
    end

    ##
    # Make sure all required attributes have been defined.
    #
    def validate
      required_attributes = [
        :name,
        :md5,
        :description,
        :type
      ]

      required_attributes.map do |ra|
        self.send(ra)
      end.include? nil

    end

  end # class << self
end

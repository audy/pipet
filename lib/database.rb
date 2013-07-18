##
# Database
#
# Creates a DSL for defining Databases
# which can be downloaded using `pipet pull`
#

class Database


  class << self

    attr_accessor :my_url

    ##
    # Specify the URL of a database
    #
    def url(url)
      @my_url = url
    end

    ##
    # Specify MD5 checksum of database
    #
    def md5
    end

    ##
    #  Provide a description for the database
    #
    def description
    end

    ##
    # Name the database. This is used be `pipet pull`
    #
    def name
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
    def type
    end

  end
end

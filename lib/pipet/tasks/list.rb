module Pipet
  class CLI

    desc 'list', 'list all available databases'

    def list
      databases = Database.all

      databases.each do |db|
        puts "#{db.name}"
      end

    end
  end
end

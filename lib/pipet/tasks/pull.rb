module Pipet
  class CLI

    desc 'pull', 'download a database'

    def pull(name)
      match = Database.all.keep_if { |x| x.name == name }.first
      match.pull
    end

  end
end

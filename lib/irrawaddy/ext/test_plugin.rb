module Irrawaddy
  module Plugins

    class TestPlugin

      include Plugin

      def do_something
        puts 'Hello world from TestPlugin!'
      end

    end

  end
end
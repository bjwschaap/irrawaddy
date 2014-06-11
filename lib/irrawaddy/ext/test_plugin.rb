module Irrawaddy
  module Plugins

    class TestPlugin < IrrawaddyPlugin

      def do_something
        puts 'Hello world from TestPlugin!'
      end

    end

  end
end
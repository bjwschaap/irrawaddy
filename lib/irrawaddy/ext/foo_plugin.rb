module Irrawaddy
  module Plugins

    class FooPlugin

      include Plugin

      def do_something
        puts 'Fubar from FooPlugin!!'
      end

    end

  end
end
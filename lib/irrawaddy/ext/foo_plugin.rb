module Irrawaddy
  module Plugins

    class FooPlugin < IrrawaddyPlugin

      def do_something_else(param)
        puts "Fubar from FooPlugin with #{param}!!"
      end

    end

  end
end
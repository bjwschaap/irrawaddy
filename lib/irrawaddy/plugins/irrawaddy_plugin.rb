module Irrawaddy
  module Plugins

    class IrrawaddyPlugin

      include Plugin

      def do_something
        raise PluginError 'Please implement do_something!'
      end

    end
  end
end
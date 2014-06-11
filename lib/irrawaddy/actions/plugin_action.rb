module Irrawaddy
  module Actions

    class PluginAction < ::Dynflow::Action

      def run
        plugin = Irrawaddy::Plugins::TestPlugin.new
        plugin.do_something

        plugin = Irrawaddy::Plugins::FooPlugin.new
        plugin.do_something
      end

    end

  end
end
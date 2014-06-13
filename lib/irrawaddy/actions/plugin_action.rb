module Irrawaddy
  module Actions

    class PluginAction < ::Dynflow::Action

      def run(*args)
        repo = Irrawaddy::Plugins::IrrawaddyPlugin.repository
        repo.each do |p|
          puts "Found plugin: #{p}"
        end

        pluginclass = Kernel.const_get 'Irrawaddy::Plugins::TestPlugin'
        plugin = repo[repo.index(pluginclass)].new
        plugin.send 'do_something'.to_sym

        # plugin = Irrawaddy::Plugins::FooPlugin.new
        # plugin.send :do_something_else, 'blaat'
      end

    end

  end
end
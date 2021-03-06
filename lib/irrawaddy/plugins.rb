require 'irrawaddy/plugins/plugin'
require 'irrawaddy/plugins/irrawaddyplugin'

module Irrawaddy
  module Plugins

    dir = File.expand_path File.dirname(__FILE__)
    p "Plugin directory: #{dir}/ext"
    $LOAD_PATH.unshift(dir)
    Dir[File.join(dir, 'ext', '*.rb')].each do |file|
      pluginfile = File.basename(file)
      puts "Loading plugin #{pluginfile}"
      require "irrawaddy/ext/#{pluginfile}"
    end

  end
end
require 'irrawaddy'
require 'dynflow/web_console'

run Irrawaddy::Server

dynflow_console = Dynflow::WebConsole.setup do
  set :world, Irrawaddy.world
end

map '/dynflow' do
  run dynflow_console
end
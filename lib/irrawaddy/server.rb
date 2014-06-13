require 'yaml'

module Irrawaddy

  class Server < Sinatra::Base

    get '/' do
      p 'Hello world!'
    end

    get '/plans' do
      json Irrawaddy.world.persistence.find_execution_plans({}).collect do |e|
        {'id'     => e.id,
         'action' => e.root_plan_step.action_class.name,
         'state'  => e.state,
         'result' => e.result}
      end
    end

    get '/test' do
      Irrawaddy.world.trigger(Irrawaddy::Actions::TemplateAction)
    end

    get '/plugins' do
      json Irrawaddy::Plugins::IrrawaddyPlugin.repository
    end

    post '/test2' do
      begin
        halt 400, 'An incorrect YAML template was submitted' unless request.media_type == 'application/yaml'
        request.body.rewind
        template = YAML.load request.body.read
        halt 400, 'An incorrect YAML template was submitted' unless template
        "You submitted template: \n#{YAML.dump(template)}"

      rescue
        halt 400, 'An incorrect YAML template was submitted'
      end
    end


  end

end
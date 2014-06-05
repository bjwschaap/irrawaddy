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



  end

end
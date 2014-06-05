module Irrawaddy
  module Actions

    class TemplateAction < ::Dynflow::Action

      def plan
        sequence do
          plan_action PluginAction
        end
      end

    end

  end
end
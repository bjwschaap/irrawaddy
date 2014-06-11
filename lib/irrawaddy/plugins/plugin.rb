module Irrawaddy
  module Plugins

    class PluginError < StandardError
    end

    module Plugin

      module ClassMethods
        def repository
          @repository ||= []
        end

        def inherited(klass)
          repository << klass
        end
      end

      def self.included(klass)
        puts 'extending with ClassMethods'
        klass.extend ClassMethods
      end

    end


  end
end
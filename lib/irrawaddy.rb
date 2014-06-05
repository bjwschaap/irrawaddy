require 'sinatra'
require 'sinatra/json'
require 'dynflow'
require 'irrawaddy/server'
require 'irrawaddy/version'

module Irrawaddy

  autoload :Mixins,  'irrawaddy/mixins'
  autoload :Actions, 'irrawaddy/actions'

  extend Mixins::Dynflow


end
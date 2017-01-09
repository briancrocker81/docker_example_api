require_relative 'fib_api'

class BaseApi < Grape::API

  version 'v1', using: :path
  prefix 'api'
  mount FibAPI
end
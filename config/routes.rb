require 'api_constraints'

MarketPlaceApi::Application.routes.draw do
  devise_for :users
  namespace :api, defaults: {
                              format: :json
                            },
                            constraits: {
                              subdomain: 'api'
                            },
                            path: '/' do
    scope module: :v1,
              constraints: ApiConstraints.new(version: 1, default: true) do
    end
  end
end

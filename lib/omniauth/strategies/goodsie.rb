require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Goodsie < OmniAuth::Strategies::OAuth2

      DEFAULT_SCOPE = 'storefront'

      option :client_options, {
        :authorize_url => '/oauth2/authorize',
        :token_url => '/oauth2/access_token',
        :site => 'https://api.goodsie.com'
      }

      option :callback_url
      
      option :provider_ignores_state, true
      
      def authorize_params
        super.tap do |params|
          params[:scope] ||= DEFAULT_SCOPE
        end
      end

      def callback_url
        options.callback_url || super
      end
    end
  end
end

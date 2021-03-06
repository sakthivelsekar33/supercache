module Supercache
  class DashboardController < ActionController::Base
    layout 'supercache/application'

    def flip
      if cache.read(:supercache)
        cache.delete(:supercache)
      else
        cache.write(:supercache, true)
      end
      redirect_to :root
    end

    private

    def cache
      Rails.cache
    end
  end
end
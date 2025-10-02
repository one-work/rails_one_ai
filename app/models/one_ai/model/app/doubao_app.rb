# frozen_string_literal: true

module OneAi
  module Model::App::DoubaoApp
    extend ActiveSupport::Concern

    included do
      attribute :base_url, :string, default: 'https://ark.cn-beijing.volces.com/api/v3/'
    end

    def api
      return @api if defined? @api
      @api = DoubaoApi.new(self)
    end

  end
end
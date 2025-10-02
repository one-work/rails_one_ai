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

    def image_5x4(prompt)
      r = api.image(
        model: 'doubao-seedream-4-0-250828',
        prompt: prompt,
        size: '1280x1024'
      )
      
      r.dig('data')
    end

  end
end
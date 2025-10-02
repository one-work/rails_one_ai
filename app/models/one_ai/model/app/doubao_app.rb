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
      context = "生成一张海报，展示门店形象，整体的货架，温暖的灯光，能激发顾客的购买欲望，门头显示“#{prompt}”字样，不需要AI生成水印"

      r = api.image(
        model: 'doubao-seedream-4-0-250828',
        prompt:  context,
        size: '1280x1024'
      )

      r.dig('data')
    end

  end
end
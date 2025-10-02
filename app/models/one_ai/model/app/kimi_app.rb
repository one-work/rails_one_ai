# frozen_string_literal: true

module OneAi
  module Model::App::KimiApp
    extend ActiveSupport::Concern

    included do
      attribute :base_url, :string, default: 'https://api.moonshot.cn/v1/'
    end

    def chat(content = '测试', **options)
      super(content, model: 'moonshot-v1-8k', **options)
    end

  end
end
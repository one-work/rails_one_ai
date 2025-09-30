# frozen_string_literal: true

module OneAi
  module Model::App::KimiApp

    def chat(content = '测试', **options)
      super(content, model: 'moonshot-v1-8k', **options)
    end

  end
end
# frozen_string_literal: true

module OneAi
  class DoubaoApi < AppApi

    def image(**options)
      post(
        'images/generations',
        origin: @app.base_url,
        **options
      )
    end

  end
end

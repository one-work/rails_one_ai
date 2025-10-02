# frozen_string_literal: true

module OneAi
  module Model::App::DoubaoApp

    def api
      return @api if defined? @api
      @api = DoubaoApi.new(self)
    end

  end
end
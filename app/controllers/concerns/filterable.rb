module Filterable
  extend ActiveSupport::Concern

  private

  def filtered(entities)
    filtering_params.each do |key, value|
      entities = entities.public_send(key, value) if value.present?
    end
    entities
  end
end
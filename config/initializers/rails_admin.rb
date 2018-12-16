# frozen_string_literal: true

require Rails.root.join(
    'lib', 'rails_admin', 'config', 'actions', 'approve_employer.rb'
)
require Rails.root.join(
    'lib', 'rails_admin', 'config', 'actions', 'ban_employer.rb'
)

RailsAdmin.config do |config|
  config.current_user_method(&:current_student)
  config.parent_controller = 'ApplicationController'
  config.authorize_with :cancan, Ability
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    approve_employer
    ban_employer
  end

  config.model 'Employer' do
    list do
      field :last_name
      field :first_name
      field :surname
      field :company
      field :status
      field :email
      include_all_fields
    end
  end
end

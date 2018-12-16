# frozen_string_literal: true

require 'rails_admin/config/actions'
require 'rails_admin/config/actions/base'

module RailsAdmin
  module Config
    module Actions
      class ApproveEmployer < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)
        register_instance_option :member do
          true
        end
        register_instance_option :pjax? do
          false
        end
        register_instance_option :only do
          'Employer'
        end
        register_instance_option :visible? do
          authorized?
        end
        register_instance_option :link_icon do
          'fa fa-check'
        end
        register_instance_option :http_methods do
          %i[get post]
        end

        register_instance_option :controller do
          proc do
            @object.status = :approved
            if @object.save
              flash[:success] =
                  "Successfully approved employer with id `#{@object.id}`."
            else
              flash[:error] =
                  "Failed to approve employer with id `#{@object.id}`. " \
                  "Error: #{@object.errors.full_messages}."
            end
            redirect_to back_or_index
          end
        end
      end
    end
  end
end

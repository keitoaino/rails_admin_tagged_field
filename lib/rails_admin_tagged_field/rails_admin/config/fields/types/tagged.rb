module RailsAdmin::Config::Fields::Types
  class Tagged < RailsAdmin::Config::Fields::Base
    RailsAdmin::Config::Fields::Types::register :tagged, self

    def allowed_methods
      [is_ckeditor, params]
    end

    register_instance_option :partial do
      :form_tagged
    end

    register_instance_option :is_ckeditor do
      false
    end

    register_instance_option :params do
      []
    end

    def dom_name
      @dom_name ||= "#{bindings[:form].object_name}_#{@name}"
    end
  end
end

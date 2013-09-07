module RailsAdmin::Config::Fields::Types
  class Tagged < RailsAdmin::Config::Fields::Base
    RailsAdmin::Config::Fields::Types::register(:tagged, self)

    def allowed_methods
      [@tags, ckeditor]
    end

    # register_instance_option :ckeditor do
    #   false
    # end

    def dom_name
      @dom_name ||= "#{bindings[:form].object_name}_#{@name}"
    end

    def is_ckeditor
      ckeditor
    end
  end
end

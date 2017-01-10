module ApplicationHelper
  def model_form resource
    simple_form_for resource, :html => { :class => 'form-horizontal' } do |f|
      visible_fields(resource).each {|attr_name| concat f.input(attr_name) }

      concat f.button(:submit, :class => 'btn-primary')
      concat (cancel_link(resource))
    end
  end

  def visible_fields resource
    resource.attribute_names - ['id', 'created_at', 'updated_at']
  end

  def cancel_link resource
    link_to t('.cancel', :default => t("helpers.links.cancel")),
                send(resource.model_name.collection + '_path'), :class => 'btn btn-default'
  end
end

class DateTimePickerInput < SimpleForm::Inputs::Base

  def input(wrapper_options)
    template.content_tag(:div, class: 'input-group date form_datetime') do
      template.concat @builder.text_field(attribute_name, input_html_options)
    end
  end

  def input_html_options
    classes = (super[:class] || [])
    classes << :'form-control'
    options = super
    options.merge({class: classes})
    options.merge({readonly: false}) unless options[:readonly]
    options
  end
end

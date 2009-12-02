# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper 
  def tabulated_error_messages_for(*params)
    options = params.last.is_a?(Hash) ? params.pop.symbolize_keys : {}
    objects = params.collect {|object_name| instance_variable_get("@#{object_name}") }.compact
    count   = objects.inject(0) {|sum, object| sum + object.errors.count }
    unless count.zero?
      error_messages = objects.map {|object| object.errors.full_messages.map {|msg| content_tag(:div, "&#8226; #{msg}") } }
      top = %Q{<table class="errors">}
      row_start = %Q{<tr>}
      title = %Q{<td class="item">Your #{params.first} has not been created</td>}
      content = %Q{<td>#{error_messages}</td>}
      row_end = %Q{</tr>}
      bottom = %Q{</table>}
      html = top + row_start + title + content + row_end + bottom
      html
    else
      ""
    end
  end
  
  def remove_link_unless_new_record(fields)
    unless fields.object.new_record?
      out = ''
      out << fields.hidden_field(:_delete)
      out << link_to_function("remove", "$(this).up('.#{fields.object.class.name.underscore}').hide(); $(this).previous().value = '1'")
      out
    end
  end
  
  def add_attachable_link(name, form)
    link_to_function name do |page|
      attachable = render(:partial => 'attachable', :locals => { :f => form, :attachable => Attachable.new })
      page << %{
        var new_attachable_id = "new_" + new Date().getTime();
        $('attachables').insert({ bottom: "#{ escape_javascript attachable }".replace(/new_\\d+/g, new_attachable_id) });
      }
    end
  end
  
  def remove_attachable_link(name)
    link_to_function "Remove file" do |page|
      page[name].remove()
    end
  end
end

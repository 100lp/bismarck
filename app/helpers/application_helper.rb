module ApplicationHelper
  def nav_link(link_text, link_path)
    class_name = request.fullpath.include?(link_path) && link_path != root_path ? 'current' : ''
    class_name = current_page?(link_path) ? 'current' : class_name

    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

  def inside_layout l, &block
    content_for "#{l}_layout".to_sym, capture(&block)
    render template: "layouts/#{l}"
  end
end

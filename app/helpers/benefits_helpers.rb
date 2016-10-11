module BenefitsHelper
    def tab_link(link_text, link_path)
        class_name = current_page?(link_path) ? 'selected' : nil
        content_tag(:div, :class => class_name) do
            link_to link_text, link_path
        end
    end
end
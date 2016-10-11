module ApplicationHelper
    def nav_link(link_text, link_path, tag_type, classes, root=:controller, action_name=nil)
        url = Rails.application.routes.recognize_path url_for(only_path: true)
        if action_name != nil
            class_name = (action_name == url[root] ? 'selected ' : '') + classes;
        else
            class_name = (link_path == "/"+url[root] ? 'selected ' : "") + classes
        end

    
        link_to link_path do
            content_tag tag_type, link_text, :class => class_name
        end
        #content_tag(tag_type, :class => class_name) do
        #    link_to link_text, link_path
        #end
    end
end

%h3 <%= controller_class_name %>

= link_to("Add <%= model_class_name %>", <%= ["new", namespace, model_name, "path"].flatten.join("_") %>)

%table
  %tr
    %td Options
  - @<%= controller_name %>.each do |<%= model_name %>|
    %tr
      %td
        = link_to("Edit", <%= ["edit", namespace, model_name, "path(#{model_name})"].flatten.join("_") %>)
        |
        = link_to("Destroy", <%= [namespace, model_name, "path(#{model_name})"].flatten.join("_") %>, :method => :delete, :confirm => "Are you sure?")

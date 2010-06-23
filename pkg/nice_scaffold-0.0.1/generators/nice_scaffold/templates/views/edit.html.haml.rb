%h3 Edit <%= singular_name %>

- form_for([namespace, @<%= singular_name %>].flatten) do |f|
  = render(:partial => 'form', :locals => {:f => f})

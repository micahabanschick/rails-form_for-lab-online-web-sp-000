<% @school_classes.each do |school_class| %>
  <div><%= link_to school_class.title, school_class_path(school_class) %></div>
<% end %>

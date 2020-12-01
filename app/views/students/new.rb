<%= form_for students_path do %>
  <label>student title:</label><br>
  <%= text_field_tag :title %><br>

  <label>student Description</label><br>
  <%= text_area_tag :description %><br>

  <%= submit_tag "Submit student" %>
<% end %>

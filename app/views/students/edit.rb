<%= form_for(@student) do |f| %>
  <%= f.label :first_name %>
  <%= f.text_field :first_name %>
  <%= f.label :last_name %>
  <%= f.text_field :last_name %>
  <%= f.submit %>
<% end %>

<% @students.each do |student| %>
  <div><%= link_to student.to_s, student_path(student) %></div>
<% end %>

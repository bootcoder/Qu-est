json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :first_name, :last_name, :email, :phone
  json.url teacher_url(teacher, format: :json)
end

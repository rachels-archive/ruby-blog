# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(email: "admin@mail.com", password: "admin123", password_confirmation: "admin123")


7.times do |x|
  case x + 1
  when 1
    suffix = "st"
  when 2
    suffix = "nd"
  when 3
    suffix = "rd"
  else
    suffix = "th"
  end

  Post.create(title: "Blog No. #{x+1}", body: "This is the #{x+1}#{suffix} post.", user_id: User.first.id)
end

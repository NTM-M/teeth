# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(category_name: "抜歯")
Category.create(category_name: "非抜歯")
Category.create(category_name: "マウスピース矯正")
Category.create(category_name: "裏側矯正")
Category.create(category_name: "部分矯正")
Category.create(category_name: "その他")

admin = Admin.new(:email => 'teeth@gmail.com', :password => 'teeth1234')
admin.save!
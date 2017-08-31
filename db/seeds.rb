# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Post.destroy_all
Comment.destroy_all

smith = User.create(first_name:'smith',last_name: 'James', email: 'smith@yahoo.com', password: 'password')
alen = User.create(first_name:'Alen',last_name: 'Robert', email: 'alen@gmail.com', password: 'password')

posts = smith.posts.create([
{title:"Low Cost", body: "Buying directly from farmer reduces the cost."},
{title:"Farmer will be more profitable.", body: "There are no middle man who buy at low cost from farmer, and increase the cost and sell at high cost. So the farmer will get relatively higher price compared to the previous."}
])
posts = alen.posts.create([
{title:"Organic food", body: "Since there is no chemical additives or preservative, the community will get organic food which is very important for health."},
{title:"Progress.", body: "I didn`t finish the app, but this is the progress so far.."}
])

comments = Comment.create([
{reply:"What an idea!!!", post: posts[0]},
{reply:"Nice.", post: posts[1]},
{reply:"Go forward!!!", post: posts[2]}
])

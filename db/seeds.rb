# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts '*******************************Started Seeding********************************************'
def bycrypt(password)
  pass = BCrypt::Password.create(password)
end
org1 = Orginization.create(name: "The Onion Project", description: "Changing the how we write code", country: "Kenya")

user1 = User.create(
  username: "Sammy",
  password_digest: bycrypt("@sammy12"),
  role: "admin",
  email: "example@email.com",
  organization_id: org1.id
)

user2 = User.create(
  username: "Jphnte",
  password_digest: bycrypt("@user12"),
  role: "user",
  email: "example@email.com",
  organization_id: org1.id

)


user3 = User.create(
  username: "Tempest",
  password_digest: bycrypt("@tempe12"),
  email: "example@email.com",
  role: "user",
  organization_id: org1.id
)

user4 = User.create(
  username: "Jane",
  password_digest: bycrypt("@tempe12"),
  email: "example@email.com",
  role: "user",
  organization_id: org1.id
)

user5 = User.create(
  username: "Doe",
  password_digest: bycrypt("@tempe12"),
  email: "example@email.com",
  role: "user",
  organization_id: org1.id
)

user6 = User.create(
  username: "Thor",
  password_digest: bycrypt("@tempe12"),
  email: "example@email.com",
  role: "user",
  organization_id: org1.id
)

project1 = Project.create(name: "Chatty", organization_id: org1.id, link: "https://github.com/Emkayint/chatty")
project2 = Project.create(name: "Pizza Shop", organization_id: org1.id, link: "https://github.com/Emkayint/palais-des-pizzas")
project3 = Project.create(name: "Swahili Spot", organization_id: org1.id, link: "https://github.com/Emkayint/swahili-spot")

issue1 = Issue.create(description: "Create a new login", user_id: user1.id, project_id: project1.id, status: "open")
issue2 = Issue.create(description: "Create a home page", user_id: user3.id, project_id: project3.id, status: "pending")
issue3 = Issue.create(description: 'Add new navigation', user_id: user2.id, project_id: project1.id, status: 'open')
issue4 = Issue.create(description: 'Add new navigation', user_id: user3.id, project_id: project2.id, status: 'closed')
issue5 = Issue.create(description: 'Fix overflow issues', user_id: user2.id, project_id: project2.id, status: 'pending')
issue6 = Issue.create(description: 'Responsive Web Design', user_id: user2.id, project_id: project3.id, status: 'closed')


comment1 = Comment.create(message: "Need a quick fix", issue_id: issue2.id, user_id: user4.id)
comment2 = Comment.create(message: "My issue depends on these fix", issue_id: issue1.id, user_id: user3.id)
comment3 = Comment.create(message: "Been trying to get it done not happening", issue_id: issue1.id, user_id: user3.id)
comment4 = Comment.create(message: "A big bug", issue_id: issue3.id, user_id: user4.id)
comment5 = Comment.create(message: "Who is willing tp work on this isue", issue_id: issue3.id, user_id: user2.id)
comment6 = Comment.create(message: "Who knows how to fix this", issue_id: issue1.id, user_id: user5.id)
comment7 = Comment.create(message: "This is killing production", issue_id: issue3.id, user_id: user3.id)
comment8 = Comment.create(message: "Need a quick ", issue_id: issue3.id, user_id: user6.id)


puts " ************************************************ DONE SEEDING ********************************************* "
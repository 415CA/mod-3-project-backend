# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all
User.destroy_all
Library.destroy_all

Book.destroy_all
User.destroy_all
Library.destroy_all

newUser = User.create({
  username: 'user',
  email: 'user@user.com',
})

newBook = Book.create({
  title: 'event.target.title.value',
  author: 'event.target.author.value',
  description: 'event.target.description.value',
  page_count: 100,
  current_page: 'event.target.page.value',
  image: 'event.target.image.value',
  info_link: 'event.target.link.value',
  user_id: newUser
})

Library.create({
  page_number: 27,
  comment: 'Best part of the book',
  user_id: newUser,
  book_id: newBook,
})
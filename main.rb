require_relative 'crud'

users = [
  { username: 'nathan', password: 'pass1' },
  { username: 'christie', password: 'pass2' },
  { username: 'jaden', password: 'pass3' },
  { username: 'madison', password: 'pass4' },
  { username: 'kiwi', password: 'pass5' }
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users

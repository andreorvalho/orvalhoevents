user = User.new(
  email: "andre@vice.vc",
  password: "12345678",
  password_confirmation: "12345678"
)
user.skip_confirmation!
user.save!

user.add_role :admin

user = User.new(
  email: "orvalhoevents@gmail.com",
  password: "12345678",
  password_confirmation: "12345678"
)
user.skip_confirmation!
user.save!
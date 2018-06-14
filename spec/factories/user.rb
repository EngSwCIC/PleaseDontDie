Factory.define :minimal_user, :class => User do |u|
  u.email 'minimal@mail.com'
  u.password '123456'
  u.password_confirmation '123456'
  u.first_name 'minimal'
  u.last_name 'user'
end

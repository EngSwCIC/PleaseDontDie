module UserSessionHelper
  def current_user
    @current_user
  end

  def login(user = nil)
	password = 'senha1234'
    if user.nil?
	  email = 'tester@mail.com'
	  first_name = 'Tester'
	  last_name = 'Mock'
	  user = User.new(email: email, password: password)
      user.save!
	  puser = ProfileUser.new(first_name: first_name, last_name: last_name, user: user)
	  puser.save!
    end
	@current_user = user
	visit '/users/sign_in'
	fill_in 'inputEmail', with: @current_user.email
	fill_in 'inputPassword', with: password
	click_button 'Entrar'
    expect(page).to have_content(
		"#{@current_user.profile_user.first_name} #{@current_user.profile_user.last_name}"
	)
  end

  def logout
    click_link 'Sair'
  end
end


RSpec.configure do |config|
  config.include UserSessionHelper
end if RSpec.respond_to?(:configure)

World(UserSessionHelper) if respond_to?(:World)




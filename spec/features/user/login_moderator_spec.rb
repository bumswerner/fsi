require "rails_helper"

RSpec.feature "Check Moderator Login - " do
  
  before do 
    # Login via Moderator
    @moderator = User.new(username: "moderator", email: "moderator@fsi.de", password: "massick", roles: "moderator")
    @moderator.confirmed_at = Date.today
    @moderator.save
  end
  
  scenario "with valid credentials" do
    visit "/"
    click_link "Login"
    fill_in "Email", with: @moderator.email
    fill_in "Password", with: @moderator.password
    click_button "Sign in"
    expect(page).to have_content("Signed in successfully.")
    expect(page).to have_link("Logout")
    expect(page).not_to have_link("Login") 
    expect(page).not_to have_link("Register")
    # Admin
    expect(page).not_to have_link("User")
    # Moderator
    expect(page).to have_link("Moderator")
    expect(page).to have_link("Edit Galleries")
    expect(page).to have_link("Edit News")
    # User
    expect(page).to have_link("Materials")
    expect(page).to have_link("Galleries")
    expect(page).to have_link("News")
  end
  
  scenario "with non valid credentials" do
    visit "/"
    click_link "Login"
    fill_in "Email", with: ''
    fill_in "Password", with:' '
    click_button "Sign in"
    expect(page).to have_content("Invalid email or password.")
    expect(page).to have_link("Login") 
    expect(page).to have_link("Register")
  end
  
end
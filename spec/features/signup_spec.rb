describe 'the signup process', type: :feature do
  let(:user) { FactoryGirl.create(:user) }

  it 'lets me signup' do
    visit '/users/sign_up'
    within('#new_user') do
      fill_in 'Email', with: 'test@mbo.com'
      fill_in 'First Name', with: 'Michael'
      fill_in 'Last Name', with: 'Orr'
      fill_in 'Password', with: '123456'
      fill_in 'Password Confirmation', with: '123456'
      fill_in 'About Me', with: 'Lorem ipsum dolor sit'
    end
    click_button 'Sign Up'
    expect(page).to have_content 'You have signed up successfully'
  end
end

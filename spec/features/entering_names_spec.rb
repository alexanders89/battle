feature 'Entering names' do
  scenario 'Players can enter their names and see them' do
    visit('/')
    fill_in :player_1_name , with: 'Owliver'
    fill_in :player_2_name , with: 'Barry'
    click_button 'Submit'
    expect(page).to have_content "Welcome Owliver and Barry!"
  end
end

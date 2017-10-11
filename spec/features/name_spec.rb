feature 'Entering names' do
  scenario 'Players can enter their names and see them' do
    sign_in_and_play
    expect(page).to have_content "Welcome Orange and Celery!"
  end
end

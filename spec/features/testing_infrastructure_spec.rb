feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/test')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Entering names' do
  scenario 'Players can enter their names and see them' do
    sign_in_and_play
    expect(page).to have_content "Welcome Orange and Celery!"
  end
end

feature 'Viewing opponents HP' do
  scenario 'See their health points' do
    sign_in_and_play
    expect(page).to have_content "Celery has 100 butter points"
  end
end

feature 'Attacking opponent' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Orange has attacked Celery"
  end
end

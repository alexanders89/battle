feature 'Attacking opponent' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Orange has attacked Celery"
  end
end

feature 'Attacking opponent' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Orange has attacked Celery"
  end

  scenario 'player attacking csn reduce opponents hp' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Celery has 90 butter points"
  end

  scenario 'returns to homescreen after an attack' do
    sign_in_and_play
    click_button('Attack')
    click_button('Home')
    expect(page).to have_content "Welcome Orange and Celery!"
    expect(page).to have_content "Celery has 90 butter points"
    expect(page).to have_content "Orange has 100 butter points"


  end
end

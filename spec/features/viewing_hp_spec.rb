feature 'Viewing opponents HP' do
  scenario 'See their health points' do
    sign_in_and_play
    expect(page).to have_content "Celery has 100 butter points"
  end
end

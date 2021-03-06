feature 'Player can select a RPS option' do
  scenario 'presents player with a choice of RPS' do
    enter_name_and_submit
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end

  scenario 'submits their RPS choice' do
    enter_name_and_submit
    choose('Paper')
    click_button('Submit')
    expect(page).to have_content('Paper')
  end
end

feature 'Game selects an RPS option' do
  scenario 'displays the selected option' do
    srand(1)
    enter_name_and_submit
    choose('Rock')
    click_button('Submit')
    expect(page).to have_content('Game plays Paper')
  end
end

feature 'The result is declared' do
  scenario 'displays winner based on rps rules' do
    srand(1)
    enter_name_and_submit
    choose('Scissors')
    click_button('Submit')
    expect(page).to have_content('Rick wins!')
  end
  scenario 'displays a draw based on rps rules' do
    srand(1)
    enter_name_and_submit
    choose('Paper')
    click_button('Submit')
    expect(page).to have_content('Its a draw!')
  end
end

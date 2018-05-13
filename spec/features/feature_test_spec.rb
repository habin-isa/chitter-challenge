require 'pg'

feature 'Viewing peeps' do

  scenario 'Valid peep string added and shown' do
    visit('/peeps')
    fill_in 'string', with: 'The night I lost CTRL'
    click_button 'Peep it'
    expect(page).to have_content 'The night I lost CTRL'
  end

end

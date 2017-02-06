require_relative '../spec_helper'
require_relative '../rails_helper'

describe 'user goes to /courses/new' do
  it 'they fill in a form' do
    visit '/courses/new'

    fill_in('course[title]', with: "Calculus I")
    fill_in('course[description]', with: "Derivatives and stuff")
    click_on('Submit')
    
    expect(current_path).to eq("/courses/1")
    expect(page).to have_content("Calculus I")
    expect(page).to have_content("Derivatives and stuff")
  end
end

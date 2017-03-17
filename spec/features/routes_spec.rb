require 'rails_helper'

RSpec.describe do

  it 'ensures root path is working' do
    visit '/'

    expect(page).to have_content('Tech Blog')

  end

  it 'ensures about path is working' do
    visit '/about'

    expect(page).to have_content("About")
  end

  it 'ensures contact path is working' do
    visit '/contact'

    expect(page).to have_content("Contact")
  end


end

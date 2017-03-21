require 'rails_helper'

RSpec.describe do

  it 'ensures root path is working' do
    visit '/'

    expect(page).to have_content('Tech Blog')

  end

  it 'ensures new path is working' do
    visit '/posts/new'

    expect(page).to have_content('Add New Post')
  end


  it 'allows user to complete form' do
    visit '/posts/new'

    fill_in 'Title', with: 'Title'
    fill_in 'Content', with: 'Content'
    attach_file 'Thumbnail', 'spec/assets/test.png'


    click_button 'Create Post'
    expect(page).to have_content('Title Content')
  end

  it 'ensures that title is validated' do
    visit '/posts/new'

    fill_in 'Content', with: 'content'

    click_button 'Create Post'
    
    expect(page).to have_content("Title can't be blank")
  end

  it 'ensures tha the content field is validated' do
    visit '/posts/new'

    fill_in 'Title', with: 'Titile'

    click_button 'Create Post'

    expect(page).to have_content("Content can't be blank")
  end


  it 'ensures that image upload is validated' do
    visit '/posts/new'

    fill_in 'Title', with: 'Title'
    fill_in 'Content', with: 'Contnt'
    click_button 'Create Post'

    expect(page).to have_content("Thumbnail can't be blank")

  end

end

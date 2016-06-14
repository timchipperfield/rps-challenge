require 'spec_helper'

feature 'see list of links on hompage' do
  scenario 'open google chrome' do
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit ('/links')
    expect(page.status_code).to eq 200
    within 'ul#links' do
    expect(page).to have_content('Makers Academy')
    end
  end
end
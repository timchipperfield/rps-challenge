require 'spec_helper'

feature 'see list of links on hompage' do
  scenario 'open google chrome' do
    visit ('/')
    expect(page).to have_content("http://blabla.com")
  end
end
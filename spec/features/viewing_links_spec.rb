require './app/models/link'

feature 'see list of links' do
  scenario 'view the links on the links page' do
    Link.create(
      title: 'Link',
      url: "example url")
    visit '/links'
    expect(page).to have_content 'Link'
  end
end

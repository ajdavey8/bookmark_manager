feature 'see list of links' do
  scenario 'view the links on the homepage' do
    Link.create(
      title: 'Link',
      url: "example url")
    visit '/'
    expect(page).to have_content 'Link'
  end
end

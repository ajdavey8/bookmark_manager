feature "adds links to bookmark manager" do
  scenario "prompts user to enter URL" do
    visit "/links/new"
    expect(page).to have_content("URL")
  end
  scenario "prompts user to enter title" do
    visit "/links/new"
    expect(page).to have_content("Title")
  end
  scenario "allows user to submit form" do
    visit "/links/new"
    expect(page).to have_button("Bookmark")
  end
end

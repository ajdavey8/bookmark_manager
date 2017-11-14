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

feature "added links now appear in /links" do
  scenario "added link appear is /links" do
    visit "/links/new"
    fill_in ("title"), with: "Linkedin"
    fill_in ("url"), with: "www.linkedin.com"
    click_button("Bookmark")
    expect(page).to have_content("Linkedin")
  end
end

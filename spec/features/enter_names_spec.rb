feature "Entering names" do
  scenario "Submitting names" do
    visit "/"
    fill_in :player_1_name, with: "Bob"
    fill_in :player_2_name, with: "Jack"
    click_button "Let's go!"
    expect(page).to have_content "Bob vs. Jack"
  end
end

feature "View points" do
  scenario "Player 2 HP" do
    visit "/"
    fill_in :player_1_name, with: "Bob"
    fill_in :player_2_name, with: "Jack"
    click_button "Let's go!"
    expect(page).to have_content "Jack: 100 HP"
  end
end

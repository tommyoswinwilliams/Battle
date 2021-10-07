feature "Reducing points" do
  scenario "To reduce player 2 points after attack" do
    sign_in_and_play
    click_button "Attack"
    click_button "Back to game"
    expect(page).to have_content "Jack: 90 HP"
  end
end
feature "View points" do
  scenario "Player 2 HP" do
    sign_in_and_play
    expect(page).to have_content "Jack: 100 HP"
  end
end

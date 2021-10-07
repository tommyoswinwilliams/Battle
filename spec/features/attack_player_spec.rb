feature "Attack player" do
  scenario "Attack Player 2 with confirmation" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "You hit Jack!"
  end
end

require "application_system_test_case"

class EtapesTest < ApplicationSystemTestCase
  setup do
    @etape = etapes(:one)
  end

  test "visiting the index" do
    visit etapes_url
    assert_selector "h1", text: "Etapes"
  end

  test "should create etape" do
    visit etapes_url
    click_on "New etape"

    fill_in "Commentaire", with: @etape.commentaire
    fill_in "Dossier", with: @etape.dossier_id
    fill_in "User", with: @etape.user_id
    click_on "Create Etape"

    assert_text "Etape was successfully created"
    click_on "Back"
  end

  test "should update Etape" do
    visit etape_url(@etape)
    click_on "Edit this etape", match: :first

    fill_in "Commentaire", with: @etape.commentaire
    fill_in "Dossier", with: @etape.dossier_id
    fill_in "User", with: @etape.user_id
    click_on "Update Etape"

    assert_text "Etape was successfully updated"
    click_on "Back"
  end

  test "should destroy Etape" do
    visit etape_url(@etape)
    click_on "Destroy this etape", match: :first

    assert_text "Etape was successfully destroyed"
  end
end

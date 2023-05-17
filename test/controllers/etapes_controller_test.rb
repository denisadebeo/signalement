require "test_helper"

class EtapesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etape = etapes(:one)
  end

  test "should get index" do
    get etapes_url
    assert_response :success
  end

  test "should get new" do
    get new_etape_url
    assert_response :success
  end

  test "should create etape" do
    assert_difference("Etape.count") do
      post etapes_url, params: { etape: { commentaire: @etape.commentaire, dossier_id: @etape.dossier_id, user_id: @etape.user_id } }
    end

    assert_redirected_to etape_url(Etape.last)
  end

  test "should show etape" do
    get etape_url(@etape)
    assert_response :success
  end

  test "should get edit" do
    get edit_etape_url(@etape)
    assert_response :success
  end

  test "should update etape" do
    patch etape_url(@etape), params: { etape: { commentaire: @etape.commentaire, dossier_id: @etape.dossier_id, user_id: @etape.user_id } }
    assert_redirected_to etape_url(@etape)
  end

  test "should destroy etape" do
    assert_difference("Etape.count", -1) do
      delete etape_url(@etape)
    end

    assert_redirected_to etapes_url
  end
end

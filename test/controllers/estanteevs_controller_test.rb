require 'test_helper'

class EstanteevsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estanteev = estanteevs(:one)
  end

  test "should get index" do
    get estanteevs_url
    assert_response :success
  end

  test "should get new" do
    get new_estanteev_url
    assert_response :success
  end

  test "should create estanteev" do
    assert_difference('Estanteev.count') do
      post estanteevs_url, params: { estanteev: { nome: @estanteev.nome } }
    end

    assert_redirected_to estanteev_url(Estanteev.last)
  end

  test "should show estanteev" do
    get estanteev_url(@estanteev)
    assert_response :success
  end

  test "should get edit" do
    get edit_estanteev_url(@estanteev)
    assert_response :success
  end

  test "should update estanteev" do
    patch estanteev_url(@estanteev), params: { estanteev: { nome: @estanteev.nome } }
    assert_redirected_to estanteev_url(@estanteev)
  end

  test "should destroy estanteev" do
    assert_difference('Estanteev.count', -1) do
      delete estanteev_url(@estanteev)
    end

    assert_redirected_to estanteevs_url
  end
end

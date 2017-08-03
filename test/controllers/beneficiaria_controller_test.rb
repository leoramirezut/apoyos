require 'test_helper'

class BeneficiariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beneficiarium = beneficiaria(:one)
  end

  test "should get index" do
    get beneficiaria_url
    assert_response :success
  end

  test "should get new" do
    get new_beneficiarium_url
    assert_response :success
  end

  test "should create beneficiarium" do
    assert_difference('Beneficiarium.count') do
      post beneficiaria_url, params: { beneficiarium: { complexion: @beneficiarium.complexion, estatura: @beneficiarium.estatura, nombre: @beneficiarium.nombre, tez: @beneficiarium.tez } }
    end

    assert_redirected_to beneficiarium_url(Beneficiarium.last)
  end

  test "should show beneficiarium" do
    get beneficiarium_url(@beneficiarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_beneficiarium_url(@beneficiarium)
    assert_response :success
  end

  test "should update beneficiarium" do
    patch beneficiarium_url(@beneficiarium), params: { beneficiarium: { complexion: @beneficiarium.complexion, estatura: @beneficiarium.estatura, nombre: @beneficiarium.nombre, tez: @beneficiarium.tez } }
    assert_redirected_to beneficiarium_url(@beneficiarium)
  end

  test "should destroy beneficiarium" do
    assert_difference('Beneficiarium.count', -1) do
      delete beneficiarium_url(@beneficiarium)
    end

    assert_redirected_to beneficiaria_url
  end
end

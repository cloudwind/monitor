require 'test_helper'

class CollectDataControllerTest < ActionController::TestCase
  setup do
    @collect_datum = collect_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:collect_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create collect_datum" do
    assert_difference('CollectDatum.count') do
      post :create, collect_datum: { BandwidthRec: @collect_datum.BandwidthRec, BandwidthRecP: @collect_datum.BandwidthRecP, BandwidthTran: @collect_datum.BandwidthTran, BandwidthTranP: @collect_datum.BandwidthTranP, CPUSys: @collect_datum.CPUSys, CPUTotal: @collect_datum.CPUTotal, CPUUser: @collect_datum.CPUUser, DiskFree: @collect_datum.DiskFree, DiskUsed: @collect_datum.DiskUsed, LoadAVG: @collect_datum.LoadAVG, MemFree: @collect_datum.MemFree, MemTotal: @collect_datum.MemTotal }
    end

    assert_redirected_to collect_datum_path(assigns(:collect_datum))
  end

  test "should show collect_datum" do
    get :show, id: @collect_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @collect_datum
    assert_response :success
  end

  test "should update collect_datum" do
    patch :update, id: @collect_datum, collect_datum: { BandwidthRec: @collect_datum.BandwidthRec, BandwidthRecP: @collect_datum.BandwidthRecP, BandwidthTran: @collect_datum.BandwidthTran, BandwidthTranP: @collect_datum.BandwidthTranP, CPUSys: @collect_datum.CPUSys, CPUTotal: @collect_datum.CPUTotal, CPUUser: @collect_datum.CPUUser, DiskFree: @collect_datum.DiskFree, DiskUsed: @collect_datum.DiskUsed, LoadAVG: @collect_datum.LoadAVG, MemFree: @collect_datum.MemFree, MemTotal: @collect_datum.MemTotal }
    assert_redirected_to collect_datum_path(assigns(:collect_datum))
  end

  test "should destroy collect_datum" do
    assert_difference('CollectDatum.count', -1) do
      delete :destroy, id: @collect_datum
    end

    assert_redirected_to collect_data_path
  end
end

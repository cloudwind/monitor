require 'test_helper'

class CollectProcessesControllerTest < ActionController::TestCase
  setup do
    @collect_process = collect_processes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:collect_processes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create collect_process" do
    assert_difference('CollectProcess.count') do
      post :create, collect_process: { Command: @collect_process.Command, Cpu: @collect_process.Cpu, Mem: @collect_process.Mem, Pid: @collect_process.Pid, User: @collect_process.User }
    end

    assert_redirected_to collect_process_path(assigns(:collect_process))
  end

  test "should show collect_process" do
    get :show, id: @collect_process
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @collect_process
    assert_response :success
  end

  test "should update collect_process" do
    patch :update, id: @collect_process, collect_process: { Command: @collect_process.Command, Cpu: @collect_process.Cpu, Mem: @collect_process.Mem, Pid: @collect_process.Pid, User: @collect_process.User }
    assert_redirected_to collect_process_path(assigns(:collect_process))
  end

  test "should destroy collect_process" do
    assert_difference('CollectProcess.count', -1) do
      delete :destroy, id: @collect_process
    end

    assert_redirected_to collect_processes_path
  end
end

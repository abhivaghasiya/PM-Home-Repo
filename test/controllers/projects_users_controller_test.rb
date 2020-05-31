require 'test_helper'

class ProjectsUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projects_user = projects_users(:one)
  end

  test "should get index" do
    get projects_users_url
    assert_response :success
  end

  test "should get new" do
    get new_projects_user_url
    assert_response :success
  end

  test "should create projects_user" do
    assert_difference('ProjectsUser.count') do
      post projects_users_url, params: { projects_user: { project_id: @projects_user.project_id, user_id: @projects_user.user_id } }
    end

    assert_redirected_to projects_user_url(ProjectsUser.last)
  end

  test "should show projects_user" do
    get projects_user_url(@projects_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_projects_user_url(@projects_user)
    assert_response :success
  end

  test "should update projects_user" do
    patch projects_user_url(@projects_user), params: { projects_user: { project_id: @projects_user.project_id, user_id: @projects_user.user_id } }
    assert_redirected_to projects_user_url(@projects_user)
  end

  test "should destroy projects_user" do
    assert_difference('ProjectsUser.count', -1) do
      delete projects_user_url(@projects_user)
    end

    assert_redirected_to projects_users_url
  end
end

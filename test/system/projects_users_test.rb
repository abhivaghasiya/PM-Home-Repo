require "application_system_test_case"

class ProjectsUsersTest < ApplicationSystemTestCase
  setup do
    @projects_user = projects_users(:one)
  end

  test "visiting the index" do
    visit projects_users_url
    assert_selector "h1", text: "Projects Users"
  end

  test "creating a Projects user" do
    visit projects_users_url
    click_on "New Projects User"

    fill_in "Project", with: @projects_user.project_id
    fill_in "User", with: @projects_user.user_id
    click_on "Create Projects user"

    assert_text "Projects user was successfully created"
    click_on "Back"
  end

  test "updating a Projects user" do
    visit projects_users_url
    click_on "Edit", match: :first

    fill_in "Project", with: @projects_user.project_id
    fill_in "User", with: @projects_user.user_id
    click_on "Update Projects user"

    assert_text "Projects user was successfully updated"
    click_on "Back"
  end

  test "destroying a Projects user" do
    visit projects_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projects user was successfully destroyed"
  end
end

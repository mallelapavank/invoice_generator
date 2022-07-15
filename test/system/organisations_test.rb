require "application_system_test_case"

class OrganisationsTest < ApplicationSystemTestCase
  setup do
    @organisation = organisations(:one)
  end

  test "visiting the index" do
    visit organisations_url
    assert_selector "h1", text: "Organisations"
  end

  test "creating a Organisation" do
    visit organisations_url
    click_on "New Organisation"

    fill_in "Address", with: @organisation.address
    fill_in "Email", with: @organisation.email
    fill_in "Logo url", with: @organisation.logo_url
    fill_in "Name", with: @organisation.name
    fill_in "Phone", with: @organisation.phone
    fill_in "Website", with: @organisation.website
    click_on "Create Organisation"

    assert_text "Organisation was successfully created"
    click_on "Back"
  end

  test "updating a Organisation" do
    visit organisations_url
    click_on "Edit", match: :first

    fill_in "Address", with: @organisation.address
    fill_in "Email", with: @organisation.email
    fill_in "Logo url", with: @organisation.logo_url
    fill_in "Name", with: @organisation.name
    fill_in "Phone", with: @organisation.phone
    fill_in "Website", with: @organisation.website
    click_on "Update Organisation"

    assert_text "Organisation was successfully updated"
    click_on "Back"
  end

  test "destroying a Organisation" do
    visit organisations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organisation was successfully destroyed"
  end
end

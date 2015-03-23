require 'test_helper'

feature "How to Steps" do
  scenario "should get index" do
    visit  root_path
    page.text.must_include "How To Topics"
  end

  scenario "should get new" do
    visit root_path
    click_on "New how to topic"
    page.text.must_include "How To..."
  end

  scenario "should create how_to_step" do
    create_how_to_topic
    click_on "Add a step"
    fill_in "Content", with: "Get some puppy treats"
    click_on "Add this step"

    page.text.must_include "How to step was successfully created."
  end

  scenario "should show how_to_step" do
    create_how_to_topic
    click_on "Add a step"
    fill_in "Content", with: "Get some puppy treats"
    click_on "Add this step"

    page.text.must_include "How to step was successfully created."
    page.text.must_include "Get some puppy treats"
  end

  scenario "should update how_to_step" do
    create_how_to_topic
    click_on "Add a step"
    fill_in "Content", with: "Get some puppy treats"
    click_on "Add this step"
    click_on "Edit step"
    fill_in "Content", with: "Get some puppy treats that you know your puppy loves."
    click_on "Add this step"
    page.text.must_include "How to step was successfully updated."
    page.text.must_include "puppy loves"
  end

  scenario "should destroy how_to_step" do
    create_how_to_topic
    click_on "Add a step"
    fill_in "Content", with: "Get some puppy treats"
    click_on "Add this step"
    click_on "Delete step"
    page.text.must_include "How to step was successfully deleted."
    page.text.wont_include "puppy"
  end
end

require "rails_helper"

RSpec.describe "Projects" do
  describe "a user can view the projects index page" do
    context "Given an existing current_user" do
      before(:each) { stub_current_user_exists }

      it "displays the projects index page when clicking the Projects navbar link" do
        visit root_path
        click_link("projects-navlink")

        aggregate_failures do
          expect(page).to have_table("projects-table")
          expect(page).to have_current_path(projects_path)
        end
      end
    end
  end

  describe "a user can view a project show page" do
    context "Given an existing current_user" do
      let!(:project) { create(:project, key: "KEY", name: "Name") }

      before(:each) { stub_current_user_exists }

      it "displays the selected project page when clicking the project's key in the table" do
        visit projects_path
        click_link("KEY")

        aggregate_failures do
          expect(page).to have_content("Name [KEY]")
          expect(page).to have_current_path(project_path(project))
        end
      end
    end
  end
end

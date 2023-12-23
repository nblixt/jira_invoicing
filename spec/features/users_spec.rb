require "rails_helper"

RSpec.describe "Users" do
  describe "index" do
    context "Given an existing current_user" do
      before(:each) { stub_current_user_exists }

      it "displays the users index page when clicking the Users navbar link" do
        visit root_path
        click_link("users-navlink")

        aggregate_failures do
          expect(page).to have_table("users-table")
          expect(page).to have_current_path(users_path)
        end
      end
    end
  end
end

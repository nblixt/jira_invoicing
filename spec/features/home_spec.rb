require "rails_helper"

RSpec.describe "Home" do
  describe "sign in" do
    context "Given the user has a user record" do
      before(:each) { stub_current_user_exists }

      it "does not redirect to the inactive page" do
        visit root_path

        aggregate_failures do
          expect(page).to_not have_css("#inactive-user")
          expect(page).to have_current_path(root_path)
        end
      end
    end

    context "Given the user does not have a user record" do
      before(:each) { stub_no_current_user }

      it "redirects to the inactive page" do
        visit root_path

        aggregate_failures do
          expect(page).to have_css("#inactive-user")
          expect(page).to have_current_path(inactive_path)
        end
      end
    end
  end
end

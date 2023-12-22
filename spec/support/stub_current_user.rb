module StubCurrentUser
  def stub_current_user_exists
    current_user = create(:user)
    ENV["STUB_USERNAME"] = current_user.username
    current_user
  end

  def stub_no_current_user
    ENV["STUB_USERNAME"] = "not_a_user"
  end
end

class User < ApplicationRecord
  alias_attribute :jira_id, :account_id

  validates :account_id, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true

  def name
    "#{first_name} #{last_name}"
  end
end

class Project < ApplicationRecord
  validates :jira_id, presence: true
  validates :jira_id, uniqueness: true
  validates :key, presence: true
  validates :key, uniqueness: true
  validates :name, presence: true
  validates :name, uniqueness: true
end

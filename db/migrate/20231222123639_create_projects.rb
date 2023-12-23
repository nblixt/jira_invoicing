class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.integer :jira_id, null: false, index: { unique: true }
      t.string :key, index: { unique: true }
      t.string :name, index: { unique: true }
      t.string :url
      t.boolean :archived
      t.boolean :deleted
      t.text :description

      t.timestamps
    end
  end
end

class CreateIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :issues do |t|
      t.string :description
      t.string :scope
      t.integer :project_id
      t.integer :user_id
      t.string :status
      t.string :pointer

      t.timestamps
    end
  end
end

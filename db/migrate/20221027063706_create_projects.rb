class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.integer :organization_id
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end

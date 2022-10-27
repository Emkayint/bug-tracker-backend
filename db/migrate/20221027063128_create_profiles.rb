class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :image
      t.string :about
      t.string :github

      t.timestamps
    end
  end
end

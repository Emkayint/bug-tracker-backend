class CreateOrginizations < ActiveRecord::Migration[7.0]
  def change
    create_table :orginizations do |t|
      t.string :name
      t.string :description
      t.string :country

      t.timestamps
    end
  end
end

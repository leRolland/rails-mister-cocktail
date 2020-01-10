class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.string :description
      t.references :ingredient, null: false, foreign_key: true
      t.references :cocktail, null: false, foreign_key: true

      t.timestamps
    end
  end
end

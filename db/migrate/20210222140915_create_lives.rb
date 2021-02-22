class CreateLives < ActiveRecord::Migration[6.0]
  def change
    create_table :lives do |t|
      t.text :description
      t.string :img_url
      t.integer :price_per_day
      t.string :city
      t.boolean :availability, :default => true
      t.string :job
      t.string :family
      t.string :relationship
      t.string :hobby
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

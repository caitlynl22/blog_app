class CreateSuggestedReadings < ActiveRecord::Migration
  def change
    create_table :suggested_readings do |t|
      t.string :title
      t.text :link
      t.belongs_to :article, index: true

      t.timestamps null: false
    end
    add_foreign_key :suggested_readings, :articles
  end
end

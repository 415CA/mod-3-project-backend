class CreateAnnotations < ActiveRecord::Migration[6.0]
  def change
    create_table :annotations do |t|
      t.references :book, null: false, foreign_key: true
      t.integer :page_number
      t.string :comment

      t.timestamps
    end
  end
end

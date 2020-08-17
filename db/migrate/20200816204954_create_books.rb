class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :description
      t.integer :page_count
      t.integer :current_page
      t.string :image
      t.string :info_link
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end

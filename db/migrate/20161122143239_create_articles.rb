class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :resource_code
      t.date :date

      t.timestamps null: false
    end
  end
end

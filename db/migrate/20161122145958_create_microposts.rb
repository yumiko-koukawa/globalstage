class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.references :article, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :original_id
      t.string :content

      t.timestamps null: false
    end
  end
end

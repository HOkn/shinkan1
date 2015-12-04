class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :school_id
      t.integer :user_id
      t.text :content
      t.integer :like
      t.integer :dislike

      t.timestamps null: false
    end
  end
end

class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :title
      t.text :content
      t.integer :fav
      t.integer :like
      t.string :keyword1
      t.string :keyword2
      t.string :keyword3

      t.timestamps null: false
    end
  end
end

class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text, :title
      t.string :content
      t.string :text,
      t.string :askeduser
      t.string :string,
      t.string :keyword1
      t.string :text
      t.string :keyword2
      t.string :text
      t.string :keyword3
      t.string :text,
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

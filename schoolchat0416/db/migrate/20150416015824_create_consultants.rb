class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.integer :user_id
      t.string :skype_id
      t.text :payto

      t.timestamps null: false
    end
  end
end

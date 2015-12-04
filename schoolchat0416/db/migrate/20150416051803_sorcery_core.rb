class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt


      t.string :name
      t.string :screen_name

      t.string :residence_country
      t.string :location


      t.integer :school_id
      t.string :school
      t.string :school2

      t.text :program

      t.text :bio

      t.timestamps null: false
    end
  end
end


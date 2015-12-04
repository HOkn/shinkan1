class CreateAddSchoolIdToUsers < ActiveRecord::Migration
  def change
    create_table :add_school_id_to_users do |t|
      t.integer :school_id

      t.timestamps null: false
    end
  end
end

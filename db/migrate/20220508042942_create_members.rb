class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.boolean :tokan
      t.string :name
      t.string :address
      t.references :school, null: false, foreign_key: true
      t.date :birthday
      t.integer :grade
      t.date :admission_year
      t.references :kyogaku, null: false, foreign_key: true
      t.references :jmh, null: false, foreign_key: true
      t.boolean :visit
      t.integer :mobile_phone_number
      t.integer :home_phone_number
      t.references :headquarter, null: false, foreign_key: true
      t.references :branch, null: false, foreign_key: true
      t.references :district, null: false, foreign_key: true

      t.timestamps
    end
  end
end

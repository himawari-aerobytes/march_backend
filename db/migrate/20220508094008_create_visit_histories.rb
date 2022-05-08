class CreateVisitHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :visit_histories do |t|
      t.references :member, null: false, foreign_key: true
      t.date :date
      t.references :reporter, null: false, foreign_key: true
      t.text :memo
      t.string :location

      t.timestamps
    end
  end
end

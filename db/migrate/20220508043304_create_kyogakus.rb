class CreateKyogakus < ActiveRecord::Migration[6.1]
  def change
    create_table :kyogakus do |t|
      t.string :name

      t.timestamps
    end
  end
end

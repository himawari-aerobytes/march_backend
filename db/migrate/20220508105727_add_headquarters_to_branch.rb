class AddHeadquartersToBranch < ActiveRecord::Migration[6.1]
  def change
    add_reference :branches,:headquarter,foreign_key:true
  end
end

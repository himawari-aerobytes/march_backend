class AddUniqueToKyogakusJmhsHeadquartersBranchesDistricts < ActiveRecord::Migration[6.1]
  def change
    add_index :kyogakus, :name, :unique => true
    add_index :jmhs, :name, :unique => true
    add_index :headquarters, :name, :unique => true
    add_index :districts, :name, :unique => true
  end
end

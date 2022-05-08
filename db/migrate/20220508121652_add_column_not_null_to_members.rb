class AddColumnNotNullToMembers < ActiveRecord::Migration[6.1]
  def change
    change_column_null :members, :school_id, true
    change_column_null :members, :kyogaku_id, true
    change_column_null :members, :headquarter_id, true
    change_column_null :members, :branch_id, true
    change_column_null :members, :district_id, true
    change_column_null :members, :jmh_id, true
  end
end

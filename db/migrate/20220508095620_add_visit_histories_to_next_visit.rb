class AddVisitHistoriesToNextVisit < ActiveRecord::Migration[6.1]
  def change
    add_column :visit_histories, :next_visit, :date
  end
end

class Member < ApplicationRecord
  belongs_to :school
  belongs_to :kyogaku
  belongs_to :jmh
  belongs_to :headquarter
  belongs_to :branch
  belongs_to :district
end

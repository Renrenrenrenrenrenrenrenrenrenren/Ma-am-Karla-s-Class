class Department < ApplicationRecord
    has_many :students, dependent: :destroy
    has_many :teachers, dependent: :destroy
    has_many :staffs, dependent: :destroy

    def employee_count
        teachers.count + staffs.count
    end
end

class Guardian < ApplicationRecord
  has_many :students, through: :relationship, dependent: :destroy 
  has_many :relationships, dependent: :destroy

  def refresh_student_count!
    update!(number_of_students: relationships.count)
  end
end

class Solution < ApplicationRecord
  has_one_attached :answer
  belongs_to :user

  validate :solution, on: :update

  def solution
    puts ' solution validate============================================'
    if link.blank? && answer.blank?
      errors.add(:solution, 'Треба додати або лінк або файл')
    end
  end
end

class Solution < ApplicationRecord
  has_one_attached :answer
  belongs_to :user

  validate :solution, on: :update

  def solution
    if link.nil? || link.blank? && answer.blank?
      errors.add(:answer, 'Треба додати або лінк або файл')
    end
  end
end



 # def expiration_date_cannot_be_in_the_past
 #    if expiration_date.present? && expiration_date < Date.today
 #      errors.add(:expiration_date, "can't be in the past")
 #    end
 #  end

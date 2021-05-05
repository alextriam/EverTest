class Test < ApplicationRecord
  validates :text, :kind, :level_id, presence: true
end

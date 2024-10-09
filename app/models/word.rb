class Word < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

  def self.ransackable_attributes(auth_object = nil)
    [ "title" ]
  end
end

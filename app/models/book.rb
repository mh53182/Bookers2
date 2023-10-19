class Book < ApplicationRecord

  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true
  validates_length_of :body, maximum: 200, too_long: 'Body is too long (maximum is 200 characters)'

end

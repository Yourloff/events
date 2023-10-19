class User < ApplicationRecord
  has_many :events

  validates :name, presence: true, length: { maximum: 35 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true
  validates_format_of :email, :with => /\A[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}\z/i

end

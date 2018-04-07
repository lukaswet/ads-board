class Advertisement < ApplicationRecord
  belongs_to :user

  validates :type, presence: true
  validates :title, presence: true, length: {maximum: 75}
  validates :price, presence: true
  validates :details, presence: true, length: {maximum: 750}
  validates :region, presence: true
  validates :city, presence: true
end

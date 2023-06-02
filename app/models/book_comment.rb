class BookComment < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :comment, uniqueness: true
end

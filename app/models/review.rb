class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { :in => 0..5, :message => "You cannot add a rating of %{value}"}, numericality: { only_integer: true }
end

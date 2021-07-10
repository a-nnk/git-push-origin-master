class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 7 }
  validates :movie_id, presence: true, uniqueness: { scope: :list_id }, allow_blank: false
  validates :list_id, presence: true, uniqueness: { scope: :movie_id }, allow_blank: false
end

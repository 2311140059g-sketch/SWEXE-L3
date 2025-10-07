class Bookmark < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :published_date, presence: true
end

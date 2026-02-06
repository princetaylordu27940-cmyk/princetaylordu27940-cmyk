class Post < ApplicationRecord
  validates :title, :date_dream, :note, presence: true
end

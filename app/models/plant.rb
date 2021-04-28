class Plant < ApplicationRecord
  belongs_to :garden

  validates :name, :photo_url, :variety, presence: true
  validates :variety, inclusion: { in: %w(flower succulent ficus tree vegetable cactus) }
end

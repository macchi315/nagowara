class Event < ApplicationRecord
  validates :live_name, presence: true
  validates :place, presence: true
  validates :start_taime, presence: true
  validates :guest, presence: true
  validates :price, presence: true
  validates :image, presence: true
end
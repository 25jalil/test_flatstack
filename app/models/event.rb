class Event < ActiveRecord::Base
  belongs_to :user
  before_save { self.replay = replay.downcase }

  validates :title, presence: true, length: { maximum: 30}, uniqueness: true
  validates :replay, presence: true
  validates :start, presence: true
  validates :end, presence: true
end

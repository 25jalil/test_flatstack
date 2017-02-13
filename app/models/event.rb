class Event < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true, length: { maximum: 30}, uniqueness: true
  validates :replay, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end

class Project < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :updates
  has_many :rewards
  has_many :pledges, through: :rewards
  has_many :backers, through: :rewards
  accepts_nested_attributes_for :rewards
  validates_presence_of :title, :description, :goal, :start_date, :end_date
  validates :goal, numericality: { greater_than: 1 }
  # validate :goal_must_be_higher_than_zero
  # def goal_must_be_higher_than_zero
  #   if self.goal < 1
  #     errors.add(:goal, "must be higher than zero")
  #   end
  # end
end

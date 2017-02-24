class Project < ActiveRecord::Base
  belongs_to :user
  has_many :rewards
  has_many :pledges, through: :rewards
  has_many :backers, through: :rewards
  accepts_nested_attributes_for :rewards
  validates_presence_of :title, :description, :goal, :start_date, :end_date

  validate :end_date_after_start_date

  private
  def end_date_after_start_date
    if end_date < start_date
      errors.add(:end_date, 'must be after start date')
    end
  end

end

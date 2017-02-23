class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :reward
  has_one :project, through: :reward

  validate :enough_pledged
  validates_presence_of :dollar_amount, :description
  validates :goal, numericality: { greater_than: 1 }

  # validate :dollar_amount_must_be_higher_than_zero
  # def dollar_amount_must_be_higher_than_zero
  #   if self.dollar_amount < 1
  #     errors.add(:dollar_amount, "must be higher than zero")
  #   end
  # end

  def enough_pledged
    unless self.dollar_amount >= reward.dollar_amount
      self.errors.add(:dollar_amount, "Amount pledged must be at least $#{reward.dollar_amount}")
    end
  end
end

class Advertisement < ApplicationRecord
  validates :cents, presence: true

  has_many :claims

  def amount
    Money.from_cents(cents).format
  end

  def amount_claimed
    Money.from_cents(claims.sum(:cents)).format
  end
end

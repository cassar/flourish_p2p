class Advertisement < ApplicationRecord
  validates :cents, presence: true

  def amount
    Money.from_cents(cents).format
  end
end

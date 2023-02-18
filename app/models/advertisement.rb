class Advertisement < ApplicationRecord
  validates :cents, :currency, presence: true

  def amount
    Money.from_cents(cents, currency).format
  end
end

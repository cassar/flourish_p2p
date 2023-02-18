class RemoveCurrency < ActiveRecord::Migration[7.0]
  def change
    remove_column :advertisements, :currency, :string
  end
end

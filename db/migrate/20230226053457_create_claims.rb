class CreateClaims < ActiveRecord::Migration[7.0]
  def change
    create_table :claims do |t|
      t.integer :cents
      t.references :advertisement, null: false, foreign_key: true

      t.timestamps
    end
  end
end

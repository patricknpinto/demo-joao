class CreateClaims < ActiveRecord::Migration[7.0]
  def change
    create_table :claims do |t|
      t.references :account, null: false, foreign_key: true
      t.string :description
      t.string :status

      t.timestamps
    end
  end
end

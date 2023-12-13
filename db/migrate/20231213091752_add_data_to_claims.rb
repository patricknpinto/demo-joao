class AddDataToClaims < ActiveRecord::Migration[7.0]
  def change
    add_column :claims, :data, :jsonb, null: false, default: {}
  end
end

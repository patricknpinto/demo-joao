class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :claim, null: false, foreign_key: true
      t.string :description
      t.string :status

      t.timestamps
    end
  end
end

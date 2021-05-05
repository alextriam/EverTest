class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.text :text
      t.string :kind
      t.references :level, foreign_key: true

      t.timestamps
    end
  end
end

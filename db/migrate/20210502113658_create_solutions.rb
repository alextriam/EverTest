class CreateSolutions < ActiveRecord::Migration[6.1]
  def change
    create_table :solutions do |t|
      t.string :link
      t.references :users, foreign_key: true
      t.references :tests, foreign_key: true

      t.timestamps
    end
  end
end

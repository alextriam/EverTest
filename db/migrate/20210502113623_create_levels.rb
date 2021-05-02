class CreateLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :levels do |t|
      t.string :level, index: { unique: true }

      t.timestamps
    end
  end
end

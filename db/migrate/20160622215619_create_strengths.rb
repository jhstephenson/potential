class CreateStrengths < ActiveRecord::Migration
  def change
    create_table :strengths do |t|
      t.string :strength

      t.timestamps null: false
    end
  end
end

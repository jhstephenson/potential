class CreateTopFives < ActiveRecord::Migration
  def change
    create_table :top_fives do |t|
      t.string :opportunity

      t.timestamps null: false
    end
  end
end

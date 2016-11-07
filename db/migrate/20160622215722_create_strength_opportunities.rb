class CreateStrengthOpportunities < ActiveRecord::Migration
  def change
    create_table :strength_opportunities do |t|
      t.string :opportunity

      t.timestamps null: false
    end
  end
end

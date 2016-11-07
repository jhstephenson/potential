class CreateOtherOpportunities < ActiveRecord::Migration
  def change
    create_table :other_opportunities do |t|
      t.string :opportunity

      t.timestamps null: false
    end
  end
end

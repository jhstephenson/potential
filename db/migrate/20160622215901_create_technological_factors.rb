class CreateTechnologicalFactors < ActiveRecord::Migration
  def change
    create_table :technological_factors do |t|
      t.string :factor
      t.string :opportunity

      t.timestamps null: false
    end
  end
end

class CreateSocioCulturalFactors < ActiveRecord::Migration
  def change
    create_table :socio_cultural_factors do |t|
      t.string :factor
      t.string :opportunity

      t.timestamps null: false
    end
  end
end

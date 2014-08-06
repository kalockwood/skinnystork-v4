class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.date :measurement_date
      t.integer :bust
      t.integer :waist
      t.integer :hip
      t.integer :rthigh
      t.integer :lthigh
      t.integer :rbicep
      t.integer :lbicep

      t.timestamps
    end
  end
end

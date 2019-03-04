class CreateSensorApps < ActiveRecord::Migration
  def change
    create_table :sensor_apps do |t|
      t.string :title

      t.timestamps
    end
  end
end

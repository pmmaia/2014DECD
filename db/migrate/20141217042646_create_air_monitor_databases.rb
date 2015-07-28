class CreateAirMonitorDatabases < ActiveRecord::Migration
  def change
    create_table :air_monitor_databases do |t|
      t.string :pm10data
      t.string :noadata
      t.string :fieldengineer

      t.timestamps
    end
  end
end

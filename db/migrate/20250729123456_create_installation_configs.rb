class CreateInstallationConfigs < ActiveRecord::Migration[7.1]
  def change
    create_table :installation_configs do |t|
      t.string :key, null: false
      t.string :value
      t.boolean :active, default: true

      t.timestamps
    end

    add_index :installation_configs, :key, unique: true
  end
end

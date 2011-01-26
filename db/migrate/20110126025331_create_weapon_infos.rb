class CreateWeaponInfos < ActiveRecord::Migration
  def self.up
    create_table :weapon_infos do |t|
      t.references :weapon, :polymorphic=>true
      
      t.timestamps
    end
  end

  def self.down
    drop_table :weapon_infos
  end
end

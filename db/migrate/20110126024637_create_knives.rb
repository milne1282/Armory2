class CreateKnives < ActiveRecord::Migration
  def self.up
    create_table :knives do |t|
      t.decimal :length

      t.timestamps
    end
  end

  def self.down
    drop_table :knives
  end
end

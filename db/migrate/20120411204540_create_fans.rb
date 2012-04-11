class CreateFans < ActiveRecord::Migration
  def change
    create_table :fans do |t|
      t.integer :new
      t.integer :total
      t.integer :goal
      t.integer :id_soc_net
      t.integer :id_client

      t.timestamps
    end
  end
end

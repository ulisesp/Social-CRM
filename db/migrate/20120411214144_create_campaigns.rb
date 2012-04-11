class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.date :start_date
      t.date :end_date
      t.integer :id_client
      t.integer :id_soc_net
      t.integer :fan_id

      t.timestamps
    end
  end
end

class CreateFacebookData < ActiveRecord::Migration
  def change
    create_table :facebook_data do |t|
      t.integer :client_id
      t.date :start_date
      t.date :end_date
      t.text :actions
      t.integer :new_fans
      t.integer :total_fans
      t.integer :goal_fans
      t.float :fans_growth_porcent
      t.integer :prints
      t.float :porcentual_diferent
      t.integer :total_interactions
      t.integer :total_reach
      t.integer :potential_reach
      t.float :total_prints_per_anno
      t.integer :total_prints
      t.integer :total_clicks_anno
      t.integer :fans_through_anno
      t.float :agency_investment
      t.float :new_stock_investment
      t.float :anno_investment
      t.float :total_investment
      t.float :cpm_prints
      t.float :ctr_anno
      t.float :cpm_anno
      t.float :cpc_anno
      t.float :fan_cost

      t.timestamps
    end
  end
end

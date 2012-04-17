class RemoveCalculatedFieldsFromFacebookData < ActiveRecord::Migration
  def up
    remove_column :facebook_data, :total_fans
    remove_column :facebook_data, :fans_growth_porcent
    remove_column :facebook_data, :porcentual_diferent
    remove_column :facebook_data, :total_investment
    remove_column :facebook_data, :cpm_prints
    remove_column :facebook_data, :fan_cost
  end

  def down
    add_column :facebook_data, :total_fans, :integer
    add_column :facebook_data, :fans_growth_porcent, :float
    add_column :facebook_data, :porcentual_diferent, :float
    add_column :facebook_data, :total_investment, :float
    add_column :facebook_data, :cpm_prints, :float
    add_column :facebook_data, :fan_cost, :float
  end
end

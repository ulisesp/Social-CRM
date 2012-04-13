class CreateSocialNetworks < ActiveRecord::Migration
  def change
    create_table :social_networks do |t|
      t.string :name
      t.integer :client_id

      t.timestamps
    end
  end
end

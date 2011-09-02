class CreateRevisions < ActiveRecord::Migration
  def change
    create_table :revisions do |t|
      t.text :comment
      t.text :suggestion
      t.text :company_comment
      t.boolean :state

      t.timestamps
    end
  end
end

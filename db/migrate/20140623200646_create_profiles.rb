class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :url
      t.string :photo
    end
    
    add_column :users, :profile_id, :integer
    add_index :users, :profile_id, unique: true
  end
end

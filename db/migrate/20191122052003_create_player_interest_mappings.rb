class CreatePlayerInterestMappings < ActiveRecord::Migration[5.2]
  def change
    create_table :player_interest_mappings do |t|
      t.integer :user_id
      t.string :interest

      t.timestamps
    end
  end
end

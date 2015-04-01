class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :user
      t.integer :num_of_ends
      t.integer :arrows_per_end
      t.string :location

      t.timestamps
    end
  end
end

class CreateArrows < ActiveRecord::Migration
  def change
    create_table :arrows do |t|
      t.references :round
      t.integer :score

      t.timestamps
    end
  end
end

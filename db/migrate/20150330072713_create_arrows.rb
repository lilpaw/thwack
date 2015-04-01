class CreateArrows < ActiveRecord::Migration
  def change
    create_table :arrows do |t|
      t.references :end
      t.integer :score

      t.timestamps
    end
  end
end

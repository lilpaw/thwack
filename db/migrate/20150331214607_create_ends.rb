class CreateEnds < ActiveRecord::Migration
  def change
    create_table :ends do |t|
      t.references :round

      t.timestamps
    end
  end
end
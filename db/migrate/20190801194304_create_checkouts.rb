class CreateCheckouts < ActiveRecord::Migration[5.2]
  def change
    create_table :checkouts do |t|
      t.string :treatment
      t.integer :cost

      t.timestamps
    end
  end
end

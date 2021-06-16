class CreateAdjuncts < ActiveRecord::Migration[6.0]
  def change
    create_table :adjuncts do |t|
      t.integer :release_id

      t.timestamps
    end
  end
end

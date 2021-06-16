class CreateReleases < ActiveRecord::Migration[6.0]
  def change
    create_table :releases do |t|
      t.integer :creator_id
      t.integer :receptor_id
      t.string :subject
      t.text :content
      t.integer :previous_release_id

      t.timestamps
    end
  end
end

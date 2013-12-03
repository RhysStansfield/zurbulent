class CreateZurbs < ActiveRecord::Migration
  def change
    create_table :zurbs do |t|
      t.string :name
      t.integer :face_crumps

      t.timestamps
    end
  end
end

class AddEmailToZurb < ActiveRecord::Migration
  def change
    add_column :zurbs, :email, :string
  end
end

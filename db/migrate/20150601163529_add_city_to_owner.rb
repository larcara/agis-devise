class AddCityToOwner < ActiveRecord::Migration
  def change
    add_column :owners, :city, :string
    add_column :owners, :country, :string
  end
end

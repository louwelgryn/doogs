class AddAddressToCharities < ActiveRecord::Migration[5.2]
  def change
    add_column :charities, :address, :string
  end
end

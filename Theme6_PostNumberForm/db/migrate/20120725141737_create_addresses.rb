class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :post_number

      t.timestamps
    end
  end
end

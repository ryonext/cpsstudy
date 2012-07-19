class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :title
      t.string :name
      t.string :comment
      t.datetime :date

      t.timestamps
    end
  end
end

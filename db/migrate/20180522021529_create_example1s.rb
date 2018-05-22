class CreateExample1s < ActiveRecord::Migration[5.2]
  def change
    create_table :example1s do |t|
      t.string :name
      t.string :description
      t.integer :age

      t.timestamps
    end
  end
end

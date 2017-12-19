class CreateEarnings < ActiveRecord::Migration[5.1]
  def change
    create_table :earnings do |t|
      t.string :name
      t.string :status
      t.integer :salary
      t.string :pay_basis
      t.string :position_title
      t.timestamps
    end
  end
end

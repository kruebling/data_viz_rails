class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :camis
      t.string :dba
      t.string :boro
      t.string :building
      t.string :street
      t.string :zipcode
      t.string :phone
      t.string :cuisine_description
      t.datetime :inspection_date
      t.string :action
      t.string :violation_code
      t.string :violation_description
      t.string :critical_flag
      t.integer :score
      t.string :grade 
      t.datetime :grade_date
      t.datetime :record_date
      t.string :inspection_type

      t.timestamps
    end
  end
end

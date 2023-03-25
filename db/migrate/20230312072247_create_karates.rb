class CreateKarates < ActiveRecord::Migration[7.0]
  def change
    create_table :karates do |t|
      t.string :name
      t.string :second_name
      t.string :country
      t.string :activity

      t.timestamps
    end
  end
end

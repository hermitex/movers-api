class CreateMovers < ActiveRecord::Migration[7.0]
  def change
    create_table :movers do |t|
      t.decimal :rates
      t.string :speciality

      t.timestamps
    end
  end
end

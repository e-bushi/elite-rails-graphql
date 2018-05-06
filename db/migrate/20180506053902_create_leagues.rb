class CreateLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues do |t|
      t.string :league_name
      t.text :league_description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end

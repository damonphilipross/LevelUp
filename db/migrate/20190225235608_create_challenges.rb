class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.text :detail
      t.references :user, foreign_key: true
      t.date :start_date
      t.integer :duration
      t.float :cost
      t.string :metric_verb
      t.float :metric_value
      t.string :metric_frequency
      t.string :metric_operator
      t.float :latitude
      t.float :longitude
      t.string :location

      t.timestamps
    end
  end
end

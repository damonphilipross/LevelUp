class CreateFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :followers do |t|
      t.string :email
      t.boolean :influencer
      t.timestamps
    end
  end
end

class AddTagToChallenge < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :tag, :string
  end
end

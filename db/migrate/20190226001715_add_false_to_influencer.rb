class AddFalseToInfluencer < ActiveRecord::Migration[5.2]
  def change
    change_column :followers, :influencer, :boolean, default: false
  end
end

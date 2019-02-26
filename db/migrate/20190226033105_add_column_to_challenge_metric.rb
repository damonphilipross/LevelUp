class AddColumnToChallengeMetric < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :metric_unit, :string
  end
end

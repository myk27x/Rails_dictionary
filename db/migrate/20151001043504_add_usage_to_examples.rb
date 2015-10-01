class AddUsageToExamples < ActiveRecord::Migration
  def change
    add_column :examples, :usage, :string
  end
end

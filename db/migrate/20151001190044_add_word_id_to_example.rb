class AddWordIdToExample < ActiveRecord::Migration
  def change
    add_column :examples, :word_id, :integer
  end
end

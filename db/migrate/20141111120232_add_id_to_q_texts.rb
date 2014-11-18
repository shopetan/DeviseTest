class AddIdToQTexts < ActiveRecord::Migration
  def change
    add_column :q_texts, :question_id, :integer
  end
end

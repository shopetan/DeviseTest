class CreateQTexts < ActiveRecord::Migration
  def change
    create_table :q_texts do |t|
      t.integer :number
      t.text :content
      t.boolean :check

      t.timestamps
    end
  end
end

class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.date :date
      t.integer :number
      t.boolean :done

      t.timestamps
    end
  end
end

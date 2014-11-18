class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :number

      t.timestamps
    end
  end
end

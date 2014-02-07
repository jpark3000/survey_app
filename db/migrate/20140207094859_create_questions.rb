class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :survey
      t.string :content
      t.integer :key
      t.timestamps
    end
  end
end

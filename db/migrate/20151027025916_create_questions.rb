class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.column :body, :string
  
      t.timestamps null: false
    end
  end
end

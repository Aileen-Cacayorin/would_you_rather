class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.column :description, :string
      t.column :question_id, :integer
      t.timestamps null: false
    end
  end
end

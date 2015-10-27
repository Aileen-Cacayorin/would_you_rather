class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :body, :string
      t.column :question_id, :string
      t.timestamps null: false
    end
  end
end

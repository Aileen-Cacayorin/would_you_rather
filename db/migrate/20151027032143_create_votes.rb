class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.column :choice_id, :integer
      t.timestamps null: false
    end
  end
end

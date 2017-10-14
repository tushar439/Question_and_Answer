class CreateDownVotes < ActiveRecord::Migration
  def change
    create_table :down_votes do |t|
      t.string :downvote_type
      t.integer :downvote_id

      t.timestamps null: false
    end
  end
end

class CreateUpVotes < ActiveRecord::Migration
  def change
    create_table :up_votes do |t|
      t.string :upvote_type
      t.integer :upvote_id

      t.timestamps null: false
    end
  end
end

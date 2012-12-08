class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :upvote
      t.references :post

      t.timestamps
    end
    add_index :votes, [:post_id, :upvote]
  end
end

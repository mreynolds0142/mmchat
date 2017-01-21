class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|

      t.integer :receiver_user_id
      t.integer :sender_user_id
      t.integer :message_id

      t.timestamps
    end
  end
end

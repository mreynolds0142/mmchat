class RemoveMessageidFromConversation < ActiveRecord::Migration
  def change
    remove_column :conversations, :message_id, :integer
  end
end

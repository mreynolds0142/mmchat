class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|

      t.integer :receiver_user_id
      t.integer :sender_user_id

      t.text :body

      t.timestamps
    end
  end
end

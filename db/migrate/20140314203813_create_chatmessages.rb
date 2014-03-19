class CreateChatmessages < ActiveRecord::Migration
  def change
    create_table :chatmessages, id: false do |t|
      t.string :id
      t.integer :user_id
      t.string :task_id
      t.string :message

      t.timestamps
    end
    execute("ALTER TABLE chatmessages ADD PRIMARY KEY (id)")
  end
end

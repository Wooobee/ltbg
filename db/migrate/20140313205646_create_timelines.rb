class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines, id: false do |t|
      t.string :id
      t.integer :user_id
      t.string :task_id
      t.string :custom_text

      t.timestamps
    end
    execute("ALTER TABLE timelines ADD PRIMARY KEY (id)")
  end
end

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks, id: false do |t|
      t.string :id
      t.string :name
      t.string :description
      t.string :icon
      t.integer :parent_id

      t.timestamps
    end
    execute("ALTER TABLE tasks ADD PRIMARY KEY (id)")
  end
end

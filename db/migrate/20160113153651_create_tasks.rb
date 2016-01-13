class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.references :company, index: true
      t.references :project, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :tasks, :companies
    add_foreign_key :tasks, :projects
    add_foreign_key :tasks, :users
    add_index :tasks, [:company_id, :project_id, :user_id, :created_at],
                       unique: true, name: "task_search_index"
  end
end

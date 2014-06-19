class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :jobname
      t.integer :budget
      t.string :type_work
      t.string :action_stage
      t.string :status
      t.text :description
      t.integer :poster_id

      t.timestamps
    end
  end
end

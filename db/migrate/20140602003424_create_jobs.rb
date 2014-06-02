class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :jobname
      t.text :description
      t.integer :poster_id
      t.timestamps
    end
  end
end

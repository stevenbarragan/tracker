class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks, id: :uuid do |t|
      t.string  :name
      t.text    :description
      t.integer :state, default: 0
      t.uuid    :project_id

      t.timestamps null: false
    end
  end
end

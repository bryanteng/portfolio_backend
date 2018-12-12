class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :details
      t.jsonb :tools, default: [], array: true
      t.timestamps
    end
  end
end

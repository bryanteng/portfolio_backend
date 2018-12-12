class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :picture
      t.string :context
      t.belongs_to :project
      t.timestamps
    end
  end
end

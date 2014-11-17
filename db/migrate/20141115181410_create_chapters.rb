class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.references :course, index: true
      t.string :name

      t.timestamps
    end
  end
end

class CreateSylabuses < ActiveRecord::Migration
  def change
    create_table :sylabuses do |t|
      t.references :course, index: true
      t.string :name

      t.timestamps
    end
  end
end

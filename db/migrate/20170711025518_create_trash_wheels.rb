class CreateTrashWheels < ActiveRecord::Migration[5.0]
  def change
    create_table :trash_wheels do |t|
      t.string :title
      t.boolean :eyes, default: true
      t.boolean :trashy, default: true
      t.boolean :snake, default: false
      t.string :type
      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :screen_name
      t.string :avatar
      t.boolean :online, default: :false

      t.timestamps
    end
  end
end

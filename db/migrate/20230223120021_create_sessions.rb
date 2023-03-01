class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.string :session_id, null: false
      t.boolean :expired, default: false
      t.string :name

      t.timestamps
    end
  end
end
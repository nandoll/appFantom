class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.integer :dni
      t.string :name
      t.string :lastname
      t.string :email
      t.string :cel
      t.datetime :date
      t.boolean :status

      t.timestamps
    end
  end
end

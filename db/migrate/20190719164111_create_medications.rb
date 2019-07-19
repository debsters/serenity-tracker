class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :title
      t.text :content
      t.integer :user_id
    end
  end
end

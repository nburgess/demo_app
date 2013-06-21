class CreateMicrpposts < ActiveRecord::Migration
  def change
    create_table :micrpposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end

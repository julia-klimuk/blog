class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name

      t.timestamps
    end

    add_reference :comments, :user
    add_reference :posts, :user
  end
end

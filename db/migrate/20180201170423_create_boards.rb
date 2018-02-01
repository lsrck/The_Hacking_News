class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.string :url
      t.string :string
      t.references :user, foreign_key: true,

      t.timestamps
    end
  end
end

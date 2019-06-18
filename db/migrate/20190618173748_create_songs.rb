class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.text :title
      t.integer :track
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end

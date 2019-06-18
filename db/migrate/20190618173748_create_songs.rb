class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.text :title
      t.int :track
      t.album :references, foreign_key: true

      t.timestamps
    end
  end
end

class CreateHowToTopics < ActiveRecord::Migration
  def change
    create_table :how_to_topics do |t|
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end

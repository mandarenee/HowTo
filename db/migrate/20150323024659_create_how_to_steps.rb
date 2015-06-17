class CreateHowToSteps < ActiveRecord::Migration
  def change
    create_table :how_to_steps do |t|
      t.references :how_to_topic
      t.string :content

      t.timestamps null: false
    end
  end
end

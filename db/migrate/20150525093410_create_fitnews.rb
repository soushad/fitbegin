class CreateFitnews < ActiveRecord::Migration
  def change
    create_table :fitnews do |t|
      t.string :title
      t.text :content
      t.boolean :is_public

      t.timestamps null: false
    end
  end
end

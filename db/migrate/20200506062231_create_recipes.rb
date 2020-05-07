class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :summary
      t.text :method
      t.text :body
      t.boolean :published
      t.references :user

      t.timestamps
    end
  end
end

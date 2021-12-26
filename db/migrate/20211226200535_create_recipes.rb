class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.float :cost

      t.timestamps
    end
  end
end

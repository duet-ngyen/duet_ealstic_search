class CreateSearchSuggestions < ActiveRecord::Migration
  def change
    create_table :search_suggestions do |t|
      t.string :term
      t.integer :pupularity

      t.timestamps null: false
    end
  end
end

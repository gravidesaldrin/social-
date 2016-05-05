class CreateReacts < ActiveRecord::Migration
  def change
    create_table :reacts do |t|
      t.string :content
      t.boolean :positive, default: true
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

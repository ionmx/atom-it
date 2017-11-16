class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.string :name
      t.string :inverse

      t.timestamps
    end
  end
end

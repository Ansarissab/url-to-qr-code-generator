class CreateSites < ActiveRecord::Migration[7.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :url
      t.string :png
      t.string :svg

      t.timestamps
    end
  end
end

class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :site

      t.timestamps
    end
  end
end

class CreateCreatives < ActiveRecord::Migration
  def change
    create_table :creatives do |t|
      t.float :bid
      t.text :ad_text
      t.references :ad, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

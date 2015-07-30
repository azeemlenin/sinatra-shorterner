class CreateUrls < ActiveRecord::Migration

  def change
    create_table :urls do |t|
      t.text :ori_url, null: false
      t.text :shortened_url
      t.integer :user_id
      t.integer :counter, default: 0

      t.timestamps null: false
    end
  end

end

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :ccp_id
      t.string :profile_url
      t.string :avatar_url

      t.timestamps
    end
  end
end

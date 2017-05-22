class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :profile
      t.string :age_group
      t.string :flag1
      t.string :flag2
      t.string :flag3
      t.string :flag4
      t.string :flag5
      t.string :flag6
      t.string :flag7
      t.string :admin
      t.string :auth_level

      t.timestamps
    end
  end
end

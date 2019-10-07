class CreateSexes < ActiveRecord::Migration[5.2]
  def change
    create_table :sexes do |t|
      t.string :sex, null: false

      t.timestamps
    end
  end
end

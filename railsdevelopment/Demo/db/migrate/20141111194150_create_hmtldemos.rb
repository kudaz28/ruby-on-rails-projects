class CreateHmtldemos < ActiveRecord::Migration
  def change
    create_table :hmtldemos do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

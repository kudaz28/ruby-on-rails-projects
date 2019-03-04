class CreateBlogmodels < ActiveRecord::Migration
  def change
    create_table :blogmodels do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

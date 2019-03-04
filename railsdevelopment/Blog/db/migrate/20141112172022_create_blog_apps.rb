class CreateBlogApps < ActiveRecord::Migration
  def change
    create_table :blog_apps do |t|
      t.string :index

      t.timestamps
    end
  end
end

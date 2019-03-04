class AddFileToNewsletter < ActiveRecord::Migration
  def change
    add_column :newsletters, :file, :string
  end
end

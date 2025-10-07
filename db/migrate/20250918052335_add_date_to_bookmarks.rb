class AddDateToBookmarks < ActiveRecord::Migration[8.0]
  def change
    add_column :bookmarks, :date, :string
  end
end

class AddHeadlineToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :headline, :string
  end
end

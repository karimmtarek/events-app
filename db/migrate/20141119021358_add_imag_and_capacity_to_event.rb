class AddImagAndCapacityToEvent < ActiveRecord::Migration
  def change
    add_column :events, :image_name, :string
    add_column :events, :capacity, :integer, default: 1
  end
end

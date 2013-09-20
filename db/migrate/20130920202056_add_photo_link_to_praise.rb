class AddPhotoLinkToPraise < ActiveRecord::Migration
  def change
    add_column :praises, :photo_path, :string
  end
end

class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :contacts, :birthdat, :birthday
  end
end

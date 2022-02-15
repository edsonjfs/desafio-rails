class CreateJoinTableContactTelephone < ActiveRecord::Migration[6.1]
  def change
    create_join_table :contacts, :telephones do |t|
      t.index [:contact_id, :telephone_id]
      t.index [:telephone_id, :contact_id]
    end
  end
end

class AddUserToMeasurments < ActiveRecord::Migration
  def change
  	change_table :measurements do |t|
  		t.integer :user_id
  	end
  end
end

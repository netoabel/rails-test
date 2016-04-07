class ChangeGenderToEnumInTargeting < ActiveRecord::Migration
  def change
    change_column :targetings, :gender, :integer
  end
end
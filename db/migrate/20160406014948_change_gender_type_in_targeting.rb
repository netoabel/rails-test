class ChangeGenderTypeInTargeting < ActiveRecord::Migration
  def change
    change_column :targetings, :gender, :string
  end
end

class RenameGenderColumn < ActiveRecord::Migration
  def change
    rename_column :targetings, :gender, :gender_cd
  end
end

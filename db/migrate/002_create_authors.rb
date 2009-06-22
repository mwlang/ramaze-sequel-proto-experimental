class CreateAuthors < Sequel::Migration
  
  def up
    create_table :authors do
      primary_key :id
      String :name
      String :email
      String :website
    end
  end
  
  def down() 
    drop_table :authors 
  end
  
end


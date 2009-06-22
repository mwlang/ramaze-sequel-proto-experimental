class CreateEntries < Sequel::Migration
  
  def up
    create_table :entries do
      primary_key :id
      text :expression
      text :description
      text :source
      integer :author_id
    end
  end
  
  def down() 
    drop_table :entries 
  end
  
end


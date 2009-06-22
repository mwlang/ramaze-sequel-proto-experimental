Class.new(Sequel::Migration) do
  def up
    create_table(:authors) do
      primary_key :id
      String :name
      String :email
      String :website
    end
    
    create_table(:entries) do
      primary_key :id
      String :expression, :text=>true
      String :description, :text=>true
      String :source, :text=>true
      Integer :author_id
    end
    
    create_table(:schema_info) do
      Integer :version
    end
  end
  
  def down
    drop_table(:authors, :entries, :schema_info)
  end
end

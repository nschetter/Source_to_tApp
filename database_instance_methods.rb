require "active_support"
require "active_support/inflector"

module DatabaseInstanceMethods

  # Reads a specific field for a given row in a table
  #
  # field - String for the column name to read
  #
  # Returns value of field
  def get(field)
    table = self.to_s.pluralize.underscore

    result = DATABASE.execute("SELECT * FROM #{table} WHERE id = #{@id}").first
  end
  
  def to_hash
    results = DATABASE.execute("SELECT * FROM #{table} WHERE id = #{@id};")
    return results
  end

  # Deletes a row from a table
  #
  # Returns true/false Boolean
  def table
    self.class.to_s.pluralize.underscore
  end
      
  # Deletes an entry from the database.
  def delete
     DATABASE.execute("DELETE FROM #{table} WHERE id = #{@id};")
  end
  
end
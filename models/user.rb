class Report
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_accessor :id, :name
  
  def initialize(hash={})
    @id = hash["id"]
    @name = hash["name"]
  end #end initialize
  
  def add(options={})
    self.add(options)
  end
  
  def save
    return true if DATABASE.execute("UPDATE #{table} SET name = '#{name}' WHERE id = #{@id};")
  end
  
end
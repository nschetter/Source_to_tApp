class Assignment
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_accessor :id, :date, :name, :description, :blog_link, :github_link
  
  def initialize(hash={})
    @id = hash["id"]
    @date = hash["date"]
    @name = hash["name"]
    @description = hash["description"]
    @blog_link = hash["blog_link"]
    @github_link = hash["github_link"]
  end #end initialize
  
  def add(options={})
    self.add(options)
  end
  
  def save
    return true if DATABASE.execute("UPDATE #{table} SET name = '#{name}', date = '#{date}', description = '#{description}', blog_link = '#{blog_link}', github_link = '#{github_link}' WHERE id = #{@id};")
  end
  
end
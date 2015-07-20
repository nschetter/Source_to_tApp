class Report
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_accessor :id, :gps_coordinates, :location, :description, :concerns, :help, :other, :picture
  
  def initialize(hash={})
    @id = hash["id"]
    @gps_coordinates = hash["gps_coordinates"]
    @location = hash["location"]
    @description = hash["description"]
    @concerns = hash["concerns"]
    @help = hash["help"]
    @other = hash["other"]
    @picture = hash["picture"]
  end #end initialize
  
  def add(options={})
    self.add(options)
  end
  
  def save
    return true if DATABASE.execute("UPDATE #{table} SET gps_coordinates = '#{gps_coordinates}', location = '#{location}', description = '#{description}', concerns = '#{concerns}', help = '#{help}', other = '#{other}', picture = '#{picture}' WHERE id = #{@id};")
  end
  
end
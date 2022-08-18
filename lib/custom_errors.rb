class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    person.partner = self
  else
    begin
      raise PartnerError
    rescue PartnerError => error
      puts error.message
    end
  end
end



beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name





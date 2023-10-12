class Person
  @id, @name, @age
  def initialize(name="Unknown", age, parent_permission=true)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader : @id, @name, @age
  attr_writer : @name, @age    
  def of_age?
    if(@age >= 18)
      return true
    else
      return false
    end
  end

  def can_use_services?
    if(@age >= 18 || @parent_permission)
      return true
    else
      return false
    end
  end
end
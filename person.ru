class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name: 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def of_age?
    return true if age >= 18

    false
  end

  public

  def can_use_services?
    return true if of_age? || @parent_permission

    false
  end
end

require_relative './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    cont = 0
    while @list[cont]
      yield @list[cont]
      cont += 1
    end
    @list
  end
end

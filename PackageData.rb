class PackageData
  attr_accessor :weight, :length, :width, :height, :distance , :price, :info
  def initialize()
    @weight   = 0
    @length   = 0
    @width    = 0
    @height   = 0
    @distance = 0
    @price    = 0
  end

  def Size(weight = 0, length = 0, width = 0, height = 0)
    puts("write package weight: ")
    weight = gets
    if weight.is_a? Numeric
      @weight = weight
    end

    puts("write package length: ")
    length = gets
    if length.is_a? Numeric
      @length = length
    end

    puts("write package width: ")
    width  = gets
    if width.is_a? Numeric
      @width  = width
    end

    puts("write package height: ")
    height = gets
    if height.is_a? Numeric
      @height = height
    end
  end

  def PackageLocation(ponit_of_departure = "", destination = "")
    puts("wtite point of departure")
    ponit_of_departure = gets
    puts("wtite destination")
    destination = gets
    @distance = Google::Maps.distance(ponit_of_departure, destination)
  end

  def volume()
    return @length * @width * @height
  end

  def PriceCalculation()
    if volume() < 1
      @price = 1 * @distance
    elsif volume() >= 1 and @weight < 10
      @price = 2 * @distance
    elsif volume() >=1 and @weight >= 10
      @price = 3 * @distance
    else
      puts("we don't deliver such parcels")
    end
  end

  def Information()
    @info = {weight:  @weight,
            length:   @length,
            width:    @width,
            height:   @height ,
            distance: @distance,
            price:    @price}
    puts (@info)
  end
end

class UIView
	def left
    self.origin.x
  end
  alias_method :x, :left

  def right
    self.origin.x + self.size.width
  end

  def top
    self.origin.y
  end
  alias_method :y, :top

  def bottom
    self.origin.y + self.size.height
  end

  def width
    self.size.width
  end

  def height
    self.size.height
  end

  def left=(value)
    self.origin = [value, self.origin.y]
  end
  alias_method :x=, :left=

  def right=(value)
    self.origin = [value - self.size.width, self.origin.y]
  end

  def width=(value)
    @width_applied = true
    self.size=[value, self.size.height]
  end

  def height=(value)
    @height_applied = true
    self.size=[self.size.width, value]
  end

  def top=(value)
    self.origin = [self.origin.x, value]
  end
  alias_method :y=, :top=

  def bottom=(value)
    self.origin = [self.origin.x, value - self.size.height]
  end
end
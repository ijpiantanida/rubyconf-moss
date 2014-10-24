class MainLayout < MotionKit::Layout
  view :button
  view :fire
  view :message

  def layout
    root(:main) do
			add UIImageView, :image
      @button = add UIButton, :button
      @fire = add UIImageView, :fire
      @message = add UILabel, :message
    end
  end

  def main_style
  	backgroundColor [154, 26, 23].uicolor
  end

  def image_style
  	contentMode UIViewContentModeScaleAspectFit
		image "moss.png".uiimage
		constraints do
			width.equals(:superview)
			height.equals(:superview).minus(108)
			x 0
			bottom.equals(:button, :top).minus(20)
		end
  end

  def fire_style
  	contentMode UIViewContentModeScaleAspectFit
  	image "fire.png".uiimage
  	constraints do
  		height.equals(:superview).times(0.4)
  		center_x.equals(:superview)
  		width.equals(:superview)
  	end
  end

  def message_style
    textColor [255, 216, 143].uicolor
    font "Outage".uifont(30)
    text "IT'S FINE\nI'VE SENT AN EMAIL"
    numberOfLines 0
    adjustsFontSizeToFitWidth true
    textAlignment NSTextAlignmentCenter
    constraints do
      center_x.equals(:superview)
      width.equals(:superview).minus(10)
      height.equals(40)
    end
  end

  def button_style
  	title "WHAT'S THAT?!!!"
    font "Outage".uifont(27)
  	titleColor :white.uicolor
  	backgroundColor [115, 70, 88].uicolor

  	constraints do
  		width.equals(:superview).minus(44)
  		height 44
  		center_x.equals(:superview)
  		bottom.equals(:superview).minus(20)
  	end

  	layer do
  		cornerRadius 6
  		borderWidth 1
  		borderColor [154, 26, 113].uicolor.cgcolor
  	end
  end
end
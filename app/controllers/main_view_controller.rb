class MainViewController < UIViewController
	def loadView
    @layout = MainLayout.new
    self.view = @layout.view

    @button = @layout.button
    @fire = @layout.fire
    @message = @layout.message

    @button.on(:touch){ show_fire }
  end

  def viewDidLayoutSubviews
  	@fire.top = self.view.bottom
  	@message.top = self.view.bottom
  end

  def show_fire
  	UIView.animate(duration: 1.5, after: ->{show_message}) do
  		@fire.bottom = @button.top
  		@button.alpha = 0
  	end
  end

  def show_message
  	UIView.animate(duration: 1) do
  		@message.bottom = self.view.bottom - 20
  	end
  end
end
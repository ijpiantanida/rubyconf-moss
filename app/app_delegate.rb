class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
		App.shared.statusBarStyle = UIStatusBarStyleLightContent

  	@window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
  	@window.rootViewController = MainViewController.alloc.init
  	@window.makeKeyAndVisible
    true
  end
end

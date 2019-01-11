class RootController < UIViewController
  def viewDidLoad
    alert = UIAlertView.alloc.initWithTitle "This is my App",
    message:"This is an example",
      delegate: nil,
      cancelButtonTitle: "Cancel",
      otherButtonTitles: "Yes", "No", nil
    alert.show
  end

end

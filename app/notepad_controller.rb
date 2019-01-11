class NotepadController < UITableViewController
  def viewDidLoad
    super
    @note1 = Note.new({'title'=> "Groceries", 'noteworthiness'=> "Very Important", 'message'=> "Paper towels\nFormula\nDiapers\nCheese\nMeat"})
    @note2 = Note.new({'title'=> "Groceries", 'noteworthiness'=> "Very Important", 'message'=> "Soda\nEggs\nBacon\nBagles\nBanana\nMilk\nJuice\nChips\nWet Cat"})
    @notes = [@note1,@note2]
    view.backgroundColor = UIColor.whiteColor
    @myTableView = UITableView.alloc.initWithFrame(view.bounds, style:UITableViewStylePlain)
    @myTableView.dataSource = self
    @myTableView.delegate = self
    view.addSubView(@myTableView)
  end

end

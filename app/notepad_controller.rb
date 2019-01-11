class NotepadController < UITableViewController
  def viewDidLoad
    super
    @note1 = Note.new({'title'=> "Groceries", 'noteworthiness'=>"Very", 'message'=>"Pizza\ncheese\nbanana\nmilk"})
    @note2 = Note.new({'title'=> "Call", 'noteworthiness'=>"Not so much", 'message'=>"Don't for to call the hospital"})
    @notes = [@note1,@note2]
    view.backgroundColor = UIColor.whiteColor
    @myTableView = UITableView.alloc.initWithFrame(view.bounds, style:UITableViewStylePlain)
    @myTableView.dataSource = self
    @myTableView.delegate = self
    view.addSubview(@myTableView)
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @notes.count
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)

    @reuseIdentifier ||= "CELL_IDENTIFIER"

    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier) || begin
        UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:@reuseIdentifier)
    end
    cell.textLabel.text = @notes[indexPath.row].title
    cell
  end

end

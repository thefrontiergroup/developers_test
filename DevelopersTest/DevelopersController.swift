import Foundation
import UIKit

class DevelopersController: UITableViewController {

  // MARK: UITableViewDataSource

  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

    let cell = tableView.dequeueReusableCellWithIdentifier("DeveloperCell")!

    if indexPath.section == 0 {
      cell.textLabel?.text = developersWhoKnowIOS[indexPath.row]
    } else {
      cell.textLabel?.text = developersWhoDontKnowIOS[indexPath.row]
    }

    return cell
  }

  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 2
  }

  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if section == 0 {
      return developersWhoKnowIOS.count
    } else {
      return developersWhoDontKnowIOS.count
    }
  }

  // MARK: UITableViewDelegate

  override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
    let delete = UITableViewRowAction(style: .Destructive, title: "Delete", handler: self.onRowDelete)
    return [delete]
  }

  // MARK: Private

  let developersWhoKnowIOS = ["Jordan"]
  let developersWhoDontKnowIOS = ["Ben", "JK", "Colyn"]

  private func onRowDelete(action: UITableViewRowAction, indexPath: NSIndexPath) {
    print("Delete was called")
  }
  
}

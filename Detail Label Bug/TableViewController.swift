import UIKit

class TableViewController: UITableViewController {

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as UITableViewCell
      cell.textLabel.text = "Foo"
      cell.detailTextLabel?.text = indexPath.row == 5 ? "" : "Bar baz xyzzy thud."
        return cell
    }
}

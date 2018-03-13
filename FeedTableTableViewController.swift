//
//  FeedTableTableViewController.swift
//  Selfigram
//
//  Created by Maggie Drinkwater on 2018-03-12.
//  Copyright © 2018 Maggie Drinkwater. All rights reserved.
//

import UIKit

class FeedTableTableViewController: UITableViewController {
    
    var words = Array (["Hello", "my", "name", "is", "Selfigram"])
    
    var posts = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // UIImage has an initializer where you can pass in the name of an image in your project to create an UIImage
        // UIImage(named: "Grumpy-Cat") can return nil if there is no image called "grumpy-cat" in your project
        // Our definition of Post did not include the possibility of a nil UIImage
        // so, therefore we have to add a ! at the end of it
        
        let me = User(Xusername: "danny", XprofileImage: UIImage(named: "Grumpy-Cat")!)
        let post0 = Post(Ximage: UIImage(named: "uglydog1")!, Xuser: me, Xcomment: "Ugly Dog 0")
        let post1 = Post(Ximage: UIImage(named: "uglydog2")!, Xuser: me, Xcomment: "Ugly Dog 1")
        let post2 = Post(Ximage: UIImage(named: "uglydog3")!, Xuser: me, Xcomment: "Ugly Dog 2")
        let post3 = Post(Ximage: UIImage(named: "uglydog4")!, Xuser: me, Xcomment: "Ugly Dog 3")
        let post4 = Post(Ximage: UIImage(named: "uglydog5")!, Xuser: me, Xcomment: "Ugly Dog 4")
    
        posts = [post0, post1, post2, post3, post4]
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath)
        
        let post = posts[indexPath.row]
        cell.imageView?.image = post.image
        cell.textLabel?.text = post.comment
        
        return cell
    }
    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

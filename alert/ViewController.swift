//
//  ViewController.swift


import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate{

    @IBOutlet weak var clickButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func openPage(){
        let acceptButtonAlertAction = SFSafariViewController(URL: NSURL(string: "https://google.com")!, entersReaderIfAvailable: true)
        self.presentViewController(acceptButtonAlertAction, animated: true, completion: nil)
     }
    
    func safariViewControllerDidFinish(controller: SFSafariViewController) {
         controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func clickButton(sender: AnyObject) {
        
        let alertBox = UIAlertController(title: "Alert Title", message: "Click Accept Button to Open https://google.com with SFSafariViewController", preferredStyle: UIAlertControllerStyle.Alert)
        
        alertBox.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        
        alertBox.addAction(UIAlertAction(title: "Accept", style: UIAlertActionStyle.Destructive, handler: {UIAlertAction in self.openPage()}))
        
        self.presentViewController(alertBox, animated: true, completion: nil)
        
    
    }
    
   
    
}


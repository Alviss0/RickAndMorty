import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CharactersButton: UIButton!
    @IBOutlet weak var LocationsButton: UIButton!
    @IBOutlet weak var EpisodesButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        CharactersButton.layer.cornerRadius = 15
        CharactersButton.layer.masksToBounds = true;
        
        LocationsButton.layer.cornerRadius = 15
        LocationsButton.layer.masksToBounds = true;
        
        EpisodesButton.layer.cornerRadius = 15
        EpisodesButton.layer.masksToBounds = true;
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}


//
//  SignsResultViewController.swift
//  G1DriveTest
//
//  Created by Karan Rajput on 2022-05-02.
//

import UIKit

class SignsResultViewController: UIViewController {

    var resscore = 0
    
    @IBOutlet weak var trophyimage: UIImageView!
    @IBOutlet weak var passmsg: UITextView!
    @IBOutlet weak var congolbl: UILabel!
    @IBOutlet weak var notelbl: UILabel!
    @IBOutlet weak var returnbtn: UIButton!
    @IBOutlet weak var tryagainbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        tryagainbtn.isHidden = true
        returnbtn.isHidden = true
        // Do any additional setup after loading the view.
        
        let finalscore = resscore;
        let finalscorepercentage = (100*finalscore)/20
        
        if finalscorepercentage >= 80
        {
            trophyimage.image = UIImage(named: "Trophy")
            congolbl.text = "CONGRATULATIONS"
            passmsg.text = "You have successfully passed G1 Test with " + String(finalscorepercentage) + "%"
            tryagainbtn.isHidden = true
            returnbtn.isHidden = false
            
        }
        else
        {
            trophyimage.image = UIImage(named: "try")
            congolbl.text = "Better Luck Next Time"
            passmsg.text = "You have failed G1 Test with " + String(finalscorepercentage) + "%"
            tryagainbtn.isHidden = false
            returnbtn.isHidden = false
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

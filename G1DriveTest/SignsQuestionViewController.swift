//
//  SignsQuestionViewController.swift
//  G1DriveTest
//
//  Created by Karan Rajput on 2022-05-02.
//

import UIKit

class SignsQuestionViewController: UIViewController {
    let questionimages : [UIImage] = [UIImage(named: "sign1")!,UIImage(named: "sign2")!,UIImage(named: "sign3")!,UIImage(named: "sign4")!,UIImage(named: "sign5")!,UIImage(named: "sign6")!,UIImage(named: "sign7")!,UIImage(named: "sign8")!,UIImage(named: "sign9")!,UIImage(named: "sign10")!,UIImage(named: "sign11")!,UIImage(named: "sign12")!,UIImage(named: "sign13")!,UIImage(named: "sign14")!,UIImage(named: "sign15")!,UIImage(named: "sign16")!,UIImage(named: "sign17")!,UIImage(named: "sign18")!,UIImage(named: "sign19")!,UIImage(named: "sign20")!,UIImage(named: "sign21")!,UIImage(named: "sign22")!,UIImage(named: "sign23")!,UIImage(named: "sign24")!,UIImage(named: "sign25")!,UIImage(named: "sign26")!,UIImage(named: "sign27")!,UIImage(named: "sign28")!,UIImage(named: "sign29")!,UIImage(named: "sign30")!,UIImage(named: "sign31")!,UIImage(named: "sign32")!,UIImage(named: "sign33")!,UIImage(named: "sign34")!]
    
    let Answer = [["You must not make a left turn","You must make a right turn only","Hidden         intersection ahead","approaching a traffic island"],
                  ["pass to right of traffic island","Road turns right then left","winding road ahead","pass other traffic on the right"],
                  ["slow moving vehicle ahead","Dead end street ahead","stop sign ahead"],
                  ["Warns of highway work operation ahead","Regulatory sign-reduce speed","Construction sign-slow down-obey flagman's directions","construction sign replacing flagman on duty"],
                  ["You must not make a 'U' turn","no left tun permitted","no right tun permitted","road slippery when wet"],
                  ["traffic signals ahead","stop signs 150 meters ahead","bump 125 meters ahead","railway crossing ahead"],
                  ["Destination board","School zone","Provincial park","Pedestrian control sign"],
                  ["approaching a railway crossing","approaching a four way intersection","approaching a hospital zone","approaching a pedestrian walk"],
                  ["you must give the right of way","you have a right of way","railway crossing ahead","school area ahead"],
                  ["stop all times","stop sign 150 meters ahead","bump 120 meters ahead","stop only if other vehicles are approaching"],
                  ["this means no stopping","no entry into intersection","need to stop for stop signs in direction of arrows","vehicles approaching from the angle shown must stop"],
                  ["do not enter","do not enter unless local traffic","means a traffic circle ahead","do not pass"],
                  ["winding road ahead","hidden intersection ahead","road slippery when wet","narrow road ahead"],
                  ["school bus stop","stop sign","yield sign","slow moving vehicle"],
                  ["school zone sign","playground zone sign","children playing in residental area","directional sign for children"],
                  ["Bump or uneven pavement","factory, slow down","construction zone","bridge or viaduct"],
                  ["divided highway ahead","divided highway ends","narrow bridge ahead","road under construction"],
                  ["lane usage sign meaning right turn only","lane usage sign permitting all turns including left","no parking from arrows to corner","advance warning danger"],
                  ["divided highway ends","narrow bridge ahead","road under construction","divided highway ahead"],
                  ["warns of a steep hill ahead","bumpy road ahead","pavement ends 500 feet ahead","safety checks ahead"],
                  ["approaching a stop sign","must not make a left turn","approaching traffic signal lights","must not make a right turn"],
                  ["road ahead slippery when wet","bumpy road ahead","winding road ahead","railway crossing ahead"],
                  ["pavement narrows","hidden intersection ahead","divided highway ahead","approaching a one-way street"],
                  ["regulatory sign","caution-school bus crossing","school crosswalk sign","intersection for school vehicles"],
                  ["construction zone 1km ahead","bumpy road ahead","narrow bridge ahead","winding road ahead"],
                  ["danger, sharp turn","keep to left","danger road ends","winding road ahead"],
                  ["I am turning left","I am turning right","I am slowing or stopping","You may pass me"],
                  ["I am slowing or stopping","I am stopping","I am turning left","I am turning right"],
                  ["I am turning right","I am turning left","You may pass me","I am slowing or stopping"],
                  ["you must exit if you remain in right hand lane","You must not drive in right hand lane","End of highway, you must move into right hand lane","you may exit if you remain in right hand lane"],
                  ["Permissive sign","route for large trucks","No trucks","Truck Route"],
                  ["Prohibited Sign","Do not enter roadway","Means a traffic circle ahead","do not enter unless local traffic"],
                  ["Right lane ends","hidden intersection","approaching a steep hill","Pedestrian crossing ahead"],
                  ["Maximum speed of 50 km/hr from this sign to next sign","speed limit for rural school zones","end of 50 km/hr zone","Maximum speed of 50 km/hr ahead"]]
    @IBOutlet weak var resultbtn: UIButton!
    @IBOutlet weak var signimage: UIImageView!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var scorelbl: UILabel!
    @IBOutlet weak var quenumberlbl: UILabel!
    
    var RandomSet = Set<UIImage>()
    var RandomIndexArray = Set<Int>()
    var currentquestion = 0
    var score = 0
    var rightAnswer:UInt32 = 0
    var resultArray = [UIImage]()
    var AnswerArray = [[String]]()
    var indexArray = [Int]()
    var quesnumber = 0
    
    var defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        currentquestion = 0
        score = 0
        scorelbl.text = String(score)
        
        btn1.layer.cornerRadius = 10;
        btn2.layer.cornerRadius = 10;
        btn3.layer.cornerRadius = 10;
        btn4.layer.cornerRadius = 10;
        
        while RandomSet.count < 20 {
            let RandomIndex = Int(arc4random_uniform(UInt32(questionimages.count)))
            RandomSet.insert(questionimages[RandomIndex])
            RandomIndexArray.insert(RandomIndex)
        }
        indexArray = Array(RandomIndexArray)
        print(indexArray)
        
        for i in indexArray
        {
            resultArray.append(questionimages[i])
            AnswerArray.append(Answer[i])
        }
        print(resultArray)
        print(AnswerArray)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        score = 0;
        nextQuestion()
    }
    
    @IBAction func btn(_ sender: UIButton) {
        if sender.tag == Int(rightAnswer)
        {
            sender.tintColor = UIColor.systemGreen
            score += 1
            scorelbl.text = String(score)
        }
        else
        {
            sender.tintColor = UIColor.systemRed
            if(Int(rightAnswer) == btn1.tag)
            {
                btn1.tintColor = UIColor.systemGreen
            }
            else if(Int(rightAnswer) == btn2.tag)
            {
                btn2.tintColor = UIColor.systemGreen
            }
            else if(Int(rightAnswer) == btn3.tag)
            {
                btn3.tintColor = UIColor.systemGreen
            }
            else
            {
                btn4.tintColor = UIColor.systemGreen
            }
        }
        if currentquestion != indexArray.count
        {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                self.nextQuestion()
            }
        }
        else
        {
            signimage.isHidden = true
            btn1.isHidden = true
            btn2.isHidden = true
            btn3.isHidden = true
            btn4.isHidden = true
            resultbtn.isHidden = false
        }
    }
    
    func nextQuestion()
    {
        resultbtn.isHidden = true
        
        signimage.image = resultArray[currentquestion]
        quesnumber += 1
        //quenumberlbl.text = String(quesnumber)
        
        
        rightAnswer = arc4random_uniform(4) + 1
        
        var button = UIButton()
        btn4.tintColor = UIColor.systemOrange
        btn1.tintColor = UIColor.systemOrange
        btn2.tintColor = UIColor.systemOrange
        btn3.tintColor = UIColor.systemOrange
        
        var x = 1
        
        for i in 1...4
        {
            button = view.viewWithTag(i) as! UIButton
            
            if i == Int(rightAnswer)
            {
                button.setTitle(AnswerArray[currentquestion][0], for: .normal)
            }
            else
            {
                button.setTitle(AnswerArray[currentquestion][x], for: .normal)
                x = x+1
            }
        }
        currentquestion += 1
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let pvc = segue.destination as? SignsResultViewController
        pvc?.resscore = score
    }

}

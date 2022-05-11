//
//  RulesQuestionsViewController.swift
//  G1DriveTest
//
//  Created by Karan Rajput on 2022-05-02.
//

import UIKit

class RulesQuestionsViewController: UIViewController {
    
    let questions = ["when driving a motor vehicle on the highway at night you should use low                     beam headlights when:",
                     "Before leaving your car parked on a downgrade, you should:",
                     "If you have G1 or G2 License and you are driving under influence of alcohol?",
                     "If you have G1 or G2 License. What is the Maximum level of blood alcohol concentration you could have?",
                     "When on the streets designed for two way traffic, hear the siren of an emergency vehicle, what does the law require you to do?",
                     "When a school bus stops with red signals flashing the law requires drivers of other vehicles to:",
                     "If you first convicted criminally for how long your license could be suspended.",
                     "If you refuse to give blood test or you have more than allowed alcohol in your blood than for how long your license could be suspended right way.",
                     "The broken centre line on a roadway means you may:",
                     "If a traffic signal changes while a pedestrian is still in the intersection, which of the following has the right of way?",
                     "When approaching an intersection where a stop sign faces you, what does the law require you to do?",
                     "When you are approaching the spot designated for streetcar to take on or discharge passengers, what you suppose to do.",
                     "If you waiting in intersection to make left hand turn, Light turns red, what you should do?",
                     "Upon approaching an intersection marked with a yield sign, you are required to:",
                     "The traffic signal is not working and there is nobody to direct the traffic what you suppose to do?",
                     "If you are neither passing somebody nor making a left turn, where you should drive your vehicle?",
                     "When driving in heavy fog, you should use:",
                     "Which of the following hand and arm signals is correct for slowing or stopping?",
                     "If you have G1 License at what time you are not suppose to drive?",
                     "If you have G1 License, you could only drive on 400 series Highway or any road where speed is more 80 Km/hr.",
                     "Should you right wheels drop off the roadways, what is the best way to get back in the roadway?",
                     "When there is cyclist in your lane you should?",
                     "To avoid the collision, you should?",
                     "Except when you tend to overtake and pass another vehicle or when you intend to make a left turn, you should:",
                     "Which of the following has the right of way over all others at an intersection when the signal light is green?",
                     "If you have G1 License most important thing is that you should:",
                     "The driver sitting beside the G1 driver must have blood alcohol concentration less than.",
                     "You should under all conditions drive at a speed which will allow you to:",
                     "If you have G1 License, the driver sitting beside you should be",
                     "To change license from G1 to G2, what someone should do?",
                     "When entering a freeway, you should signal, then:",
                     "Unless otherwise posted, the maximum speed limit on highway outside a city, town, village or built-up area is:",
                     "If you have a G2 License you should.",
                     "If there is motorcycle in your lane you should:",
                     "To get your vehicle out of skid, you should first:",
                     "If there is motorcycle on the road you should extra careful because:",
                     "If you are driving more than 50kms over the posted speed limit or you charged with careless driving you could face.",
                     "At an intersection where there is a flashing amber traffic light, you must:",
                     "When lights are required; drivers must use lower beam head lights when following another vehicle:",
                     "When lights are required, drivers are required to use low beam headlights:",
                     "Unless otherwise posted, the maximum speed limit allowed in the city, town, village and built up area is:",
                     "If your license get suspended under what circumstances you could still drive.",
                     "If you have G1 or G2 license, after how many demerit points your license could be suspended.",
                     "When the traffic signal light facing you is red and you intend to go straight through the intersection, what you must do?",
                     "On a roadway where traffic is moving in both directions, in what position must you before making a left turn?",
                     "While travelling on a highway, the driver of a motor vehicle is not permitted to carry, in a house or boat trailer:",
                     "When a streetcar is stopped to take on or discharge passengers, where there is no safety zone, what does the law require you to do before passing the streetcar?",
                     "If you have G1 or G2 license and you have accumulated maximum allowable demerit points, for how long you license will be suspended.",
                     "If the transit bus driver is giving signal to you leave after picking and dropping the passengers yo should",
                     "A flashing red signal light at an intersection means:",
                     "When a right turn against a red signal light is permitted, what does the law require you to do before entering the intersection and making the turn?",
                     "A flashing blue light mounted on a motor vehicle indicates:",
                     "If you are involved in an accident in which someone is injured you must:",
                     "How close to fire hydrant may you legally park?",
                     "You can be charged with dangerous or careless driving if you?",
                     "When you make a left turn what hand signal is correct.",
                     "Never change lanes in traffic without:",
                     "A solid centre line on the roadway is on your side of a broken centre line. What does the solid line means?",
                     "When a car is stopped to allow a pedestrian to cross the street at a marked cross walk, you should:",
                     "You are required to keep a safe distant behind the vehicle in front of you 50 km an hour you should keep at least:",
                     "When approaching an intersection and you notice the roadway behind the intersection is blocked with traffic you should:",
                     "When approaching railway crossing at which an electrical or mechanical signal device is warning of approach of a train you must:",
                     "Parking lights may be used:",
                     "When the driver of another vehicle is about to over take and pass your vehicle you must:",
                     "When you making a right turn which of the following hand and arm signal is correct",
                     "When you making a U turn the most important things you remember",
                     "Most automobile skids are the result of:",
                     "The best way to stop quickly on a wet or icy roadway is to:",
                     "Under which of the following conditions is it dangerous and unlawful to make U turn?",
                     "Before moving your car from a parked position, you should:",
                     "When a truck becomes a disabled on the highways, where the speed limit is excess of 60km/hr flares or reflections must be placed approximately what distance ahead of and to the rear of the disable vehicle?",
                     "Except when passing, what distance must be maintained between commercial vehicles travelling in the same direction on the highway outside a city or village?",
                     "If you are involved in a reportable accident how soon must you make a report to your nearest provincial or municipal police office?",
                     "When approaching a red traffic signal light and a police man motions you to go through, you must:",
                     "What documents may a police officer require a motor vehicle owner to produce?",
                     "In Ontario, when should you wear seat belt?",
                     "When stopped by police at a roadside spot check and asked to provide a breath sample?",
                     "If you are convicted of drinking and driving you will lose your driver’s license on the first offence for:",
                     "At what level of alcohol in the blood can you be convicted of being an impaired driver?",
                     "Every accident must be reported to the police where there is personal injury or when the damage exceeds?",
                     "At. night when you meet another vehicle with blinding bright lights, the safest thing to do is?",
                     "In what position on the roadway must you be before making a left turn from a one way traffic street?",
                     "When may you lend your driver’s license?",
                     "Are car drivers responsible for their passengers buckling up?",
                     "How soon after a licensed driver changes his/her name or address is he/she required to notify the ministry of transportation and communications:",
                     "A flashing green light at an intersection where turns to the left and right are permitted, means:",
                     "To what penalties is a driver liable who is convicted of driving while disqualified?",
                     "When it is safe to do so, passing other vehicles on the right sides:",
                     "When a red signal light with a green arrow is shown at an intersection it means:",
                     "When may a driver make a left turn on a red light?",
                     "When a blowout occurs you should:",
                     "In what lane of traffic should you drive when you intend to make a right-hand turn?",
                     "Under which of the following conditions is the road likely to be most slippery?",
                     "While driving around curve a good practice is to:",
                     "When a license is reinstated after 15-point suspension the point total:",
                     "When does the law require lights on vehicles to be turned on?",
                     "When two cars reach an uncontrolled intersection at approximately the same time, the right of way should be given to:",
                     "What must a driver do before entering a highway from a private road or driveway?",
                     "It is more dangerous to drive at the maximum speed limit at night than during day time because:"]
    
    let Answer = [["meeting or following another vehicle","blinded by the headlights of an approaching vehicle","approach an intersection","another driver dims his lights"],
                  ["turn your front wheel to the right and set your parking brake","leave your front wheels parallel to the curb","set your parking brake only","turn your front wheel to the left and set your parking brake?"],
                  ["license will be suspended for 30 days and you may be charged under criminal code","you will be called for an interview","you license will be cancelled","you will receive a warning letter"],
                  ["0%","0.05%","0.08%","0.5%"],
                  ["pull to the right and stop","speed up to get out of the way","slow down to 15 km/hr","continue at the same speed"],
                  ["stop until the bus proceeds or the signal lights are no longer operating","reduce speed and pass with added care","does not matter provided you should horn","wait for approaching vehicle to pass"],
                  ["one year","two years","three years","five years"],
                  ["90 days","120 days","160 days","180 days"],
                  ["pass if the way is clear","never pass","pass at any time","pass only during daylight hours"],
                  ["the pedestrian","motorists making turns","motorists coming from the left","motorists coming from the right"],
                  ["stop and proceed when it is safe to do so","stop and proceed","slow down and proceed when it is safe to do so","yield right of way if necessary to vehicles approaching from the left or right"],
                  ["If you are not driving in on one way street, you could go pass from right side, by driving very carefully, at moderate speed and keeping in mind of pedestrians","never pass that street car","blow the horn and pass the street car","if you are not driving it on oneway street you could pass from right side"],
                  ["make the left turn when it is safe to do","you should wait there because light is red","back up your car","go straight but do not make a left turn"],
                  ["enter intersection only when way is clear","stop and then enter the intersection slowly","stop and then enter the intersection quickly","keep same speed and look left and right"],
                  ["treat it like always stop sign","before you pass check your left & right","blow the horn and go straight","stop and straight"],
                  ["always drive on right side","middle of the roadways","always drive on the left side","drive wherever you want to drive"],
                  ["low beam headlights","parking lights","parking lights and high beam headlights","high beam headlights"],
                  ["arm out and down","arm out and up","arm straight out of the window","circle motion"],
                  ["from midnight till 5 am","1/2 hour after sunrise & 1/2 hour before sunset","in the bad weather when visibility is poor","in rush hour"],
                  ["you have certified driving instructor with you","driver with 4 years driving license","when carefully you could enter highway","when you get make experience"],
                  ["take foot off gas pedal; turn back when vehicle has slowed","apply brakes to reduce speed","steer hard to the left","apply brakes and steer hard to the left"],
                  ["check in mirrors, signal, check the blindspot, if it is safe make the lane change & pass the cyclist","blow the horn & pass","pass the cyclist in same lane","wait for the cyclist give the way then pass him"],
                  ["keep more space in left, right, front and back of your vehicle and try to adjust your speed accordingly","don’t drive in bad weather","always keep your headlights on","do not drive in busy traffic"],
                  ["always keep well to the right","drive in the centre of the roadway","drive on the shoulder of the highway","always keep well to the left"],
                  ["pedestrian crossing with the light","vehicles turning right","pedestrian crossing against the light","vehicles turning left"],
                  ["you must have driver with you at least four year driving experience","drive alone so that you won’t get distracts","hold the steering wheel with both hands","drive only day time"],
                  ["0.05%","0.1%","0.5%","0.08%"],
                  ["stop within a safe distance","stop within 90m","stop within 60m","stop within 150m"],
                  ["must sit on the front seat alone","owner of the vehicle","be your relative or friend","must have done defensive driving course"],
                  ["after waiting the required time, pass the G1 Exist test","pass the written test, for G2","complete defensive driving course","Don’t do any thing"],
                  ["accelerate quickly to freeway speed and merge with freeway traffic","drive slowly and be prepared to stop for freeway traffic","slow down and then enter freeway at a sharp angle","stop on acceleration lane, wait for an opening, and then enter the freeway rapidly"],
                  ["80 km/hr","100 km/hr","60 km/hr","90 km/hr"],
                  ["your blood alcohol concentration should be 0.0%, you can carry only as many a passengers, as many working seat belts","you should not drive from midnight to 5 am","not drive on 400 series highway","drive anywhere anytime you don’t have any restrictions"],
                  ["check mirror & blindspot, give the signal, if safe then make the lane change","keep driving in same lane","keep behind the motorcyclist so that motorcyclist will know that you are there","blow the horn and ask the motorcycle to give away"],
                  ["steer in the direction of the skid","steer straight ahead","steer in the opposite direction of the skid","apply brake hard"],
                  ["motorcycles is smaller in size that is why sometimes it is hard to see and its hard to estimate its speed","motorcycles are very expensive","motorcycles is not any danger to car","it is motorcyclist responsibility to be more careful"],
                  ["All of these","Fine","Suspension","Demerit points"],
                  ["slow down and proceed with caution","stop if making right turn","continue at same speed","stop if making left turn"],
                  ["within 60m","within 30m","within 120m","this only applies when approaching another vehicle"],
                  ["within 150m of the approach of another vehicle","within 1 km of the approach of another vehicle","within 300m of the approach of another vehicle","this is a safety practice, not a law"],
                  ["50 km/hr","30 km/hr","40 km/hr","60 km/hr"],
                  ["you can’t drive at all","just to back & forth to work only","day time only","if you think you are very skilled driver"],
                  ["during first 2 years 9 or more demerit points","4 demerit points","6 demerit points","8 demerit points"],
                  ["stop; proceed only when the signal turns green and when the way is clear","stop, give pedestrian the right of way, then proceeds with caution","stop, proceed when the way is clear","slow down; proceed when the way is clear"],
                  ["immediately to the right of the centre line of the roadway","does not matter provided you signal","close to the right-hand side of the roadway","close to the left-hand side of the roadway"],
                  ["persons","firearms","flammable material","pets"],
                  ["stop 2m behind the rearmost door where passengers are getting on or off, and proceed only when it is safe to do so","pass on the left side when the way is clear","stop behind the rear of the streetcar and then proceed","sound horn and pass with caution"],
                  ["60 days","30 days","90 days","120 days"],
                  ["stop or slow and let the bus to go","speed up & pass the bus","blow the horn & pass the bus","don’t pay any attention to the bus"],
                  ["stop, proceed only when it is safe to do so","slow down and drive with increased caution","slow down and if necessary yield right of way to cars approaching from the left or right","signal light is out of order, proceed with caution"],
                  ["stop, signal makes the turn so as not to interfere with other traffic, including pedestrians","slow down, proceed with caution","stop, and then merge into traffic","slow down, signal and turn"],
                  ["snow removal equipment","motor vehicle carrying explosive","an ambulance","a police emergency vehicle"],
                  ["report at once","report within 48 hours","report within 24 hours","do not report"],
                  ["3 m","1.5 m","6 m","4.5m"],
                  ["cause a collision while using cellular phone","make sudden lane change on the highway","forget put you signal","do not wear your seat belt"],
                  ["arm straight at out of window","arm out and up","arm out and down","circle motion"],
                  ["giving proper signal and looking to make sure the move be made safely","blowing your horn and looking to the rear","looking into the rear view mirror only","decreasing speed and giving correct signal"],
                  ["unsafe to overtake and pass","pass at any time","safe to overtake and pass","pass only when no traffic is in sight"],
                  ["not pass any car stopped to allow a pedestrian to cross","sound horn for the driver of the stopped car to drive on","pass the stopped car to the right","pass the stopped car on the left"],
                  ["three cars length","five cars length","one car length","seven car length"],
                  ["stop before entering the intersection and wait until traffic ahead moves on","keep as close as possible to the car ahead","proceed slowly into the intersection until the traffic ahead moves on","sound horn to warn cars ahead to move on"],
                  ["stop not less than 5 m from the nearest rail","stop less than 1.5 from the nearest rail","increase speed and cross tracks as quickly as possible","slow down and proceed with caution"],
                  ["for parking only","at any time","when driving in heavy fog","when driving on well lighted street"],
                  ["move to the right and allow such vehicle to pass","speed up so that passing is not necessary","signal to other drivers not to pass","move to the left to prevent passing"],
                  ["arm out and up","arm out and down","circle motion","arm straight out of window"],
                  ["traffic rules","length of the car","height of the curve","where the car coming"],
                  ["driving too fast","under-inflated tires","over-inflated tires","snow or ice on the road"],
                  ["pump the brake until you come to stop","keep the foot off brake and let compression stop you","put brakes on hard and try to prevent vehicle from skidding","apply brakes the same way you always do"],
                  ["All of these","upon a curve or on a hill","on a railway crossing","within 150m of a bridge, viaduct or tunnel"],
                  ["check other traffic, signal and pull from curb when it is safe to do so","signal and pull from curb","sound your horn and pull from curb slowly","check other traffic, signal and pull from curb quickly"],
                  ["30 m","15 m","60 m","90 m"],
                  ["60 m","30 m","120 m","150 m"],
                  ["at once","within 24 hours","within 48 hours","within 72 hours"],
                  ["go through at once","call the policeman attention to the red light","stop to make sure the policeman wants you to go through","wait for the light to turn green"],
                  ["all of these","a liability insurance card","ownership","a valid driver’s license"],
                  ["always","never","in between business hours only","only for elderly people or children under sixteen years of age"],
                  ["it is a criminal offence to refuse","you can refuse until a lawyer comes","it is a traffic offence to refuse","you can refuse if you’ve had nothing to drink"],
                  ["1 year","1 month","3 months","6 months"],
                  ["0.08%","0.03%","0.05%","1.0%"],
                  ["$1000","$100","$150","$200"],
                  ["look slightly to the right hand side","open and shut your eyes rapidly","look at the headlights of the approaching vehicle","turn slightly to the right hand side"],
                  ["close to the left side of the roadway","close to the right hand side of the roadway","close to the centre of the roadway","does not matter provided you signal"],
                  ["never","to another person who is learning to drive","for identification purpose only","in emergency"],
                  ["only if passengers are from five to sixteen years old","only if passengers are over sixteen years old",
                  "only if passengers over eighteen years old","only if passengers are in front seat"],
                  ["within 6 days","within 15 days","within 30 days","at any time prior to renewal of license"],
                  ["you may do any of these","may turn left if the way is clear","may turn right if the way is clear","may go straight if the way is clear"],
                  ["all of these","fine of $500","imprisonment for 6 months","6 months period of suspension of driving privilege"],
                  ["is not permitted when the street or highway has two or more lanes for traffic in the direction you are traveling","is permitted on any street of highway","is permitted providing it is possible to do so by driving on the shoulder of the road","is not permitted under any circumstances"],
                  ["proceed with caution in the direction of the arrow yielding right of way to pedestrians and other traffic","stop and wait for green light before making turn in the direction of the arrow","stop and then proceed","the green arrow os a signal for pedestrians only"],
                  ["from a one way street into a one-way street when the way is clear and the vehicle has been brought to a full stop","from a two way street into a two way street when the way is clear and the vehicle has been brought to a full stop","when the way is clear","on any red light"],
                  ["let up on the accelerator and concentrate on steering","accelerate and steer to the left","accelerate and steer to the right","let up on the accelerator and jam on the brakes"],
                  ["close to the right hand side of roadway","close to the left side of the roadway","close centre line of the roadway","does not matter provided you signal"],
                  ["for the first few minutes after it starts for rain or following a light drizzle","after it has rained for several hours","when centre line markings have just been painted","when the highway is new and first used by public"],
                  ["enter curve slowly and increase speed as the driver gets the feel of the curve","ride in the centre of the road","enter the curve at a steady speed and apply brakes if needed","slow down when entering curve only when pavement is slippery"],
                  ["is reduced to seven","is reduced to nine","remains the same","is deleted from record"],
                  ["between 1/2 hour before sunset to 1/2 hour after sunrise and at any other time you cannot see clearly for a distance of 150 m","between sunset and sunrise","after sunset & before sunrise","no specified time"],
                  ["the one approaching from the right","the one approaching from the left","the one moving faster","neither one"],
                  ["yield right of way to all vehicles approaching on the highway","give hand signal then take right of way","sound horn and proceed with caution","enter or cross the highway as quickly as possible"],
                  ["you cannot see as far as ahead at night","the roadways are more apt to be slippery at night","your reaction time is slower at night","some drivers unlawfully drive with parking lights only"]]


    @IBOutlet weak var questiontext: UITextView!
    
    @IBOutlet weak var resultbtn: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var scorelbl: UILabel!
    @IBOutlet weak var quenumberlbl: UILabel!
    
    var RandomSet = Set<String>()
    var RandomIndexArray = Set<Int>()
    var currentquestion = 0
    var score = 0
    var rightAnswer:UInt32 = 0
    var resultArray = [String]()
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
            let RandomIndex = Int(arc4random_uniform(UInt32(questions.count)))
            RandomSet.insert(questions[RandomIndex])
            RandomIndexArray.insert(RandomIndex)
        }
        indexArray = Array(RandomIndexArray)
        print(indexArray)
        
        for i in indexArray
        {
            resultArray.append(questions[i])
            AnswerArray.append(Answer[i])
        }
        print(resultArray)
        print(AnswerArray)
    }
    override func viewWillAppear(_ animated: Bool) {
        score = 0;
        nextQuestion()
    }
    
    @IBAction func btnpress(_ sender: UIButton) {
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
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.nextQuestion()
            }
        }
        else
        {
            questiontext.isHidden = true
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
        
        questiontext.text = resultArray[currentquestion]
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
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let pvc = segue.destination as? RulesResultViewController
        pvc?.resscore = score
    }
}

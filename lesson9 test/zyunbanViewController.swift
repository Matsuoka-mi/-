//
//  zyunbanViewController.swift
//  lesson9 test
//
//  Created by book mac on 2021/11/23.
//

import UIKit



class zyunbanViewController: UIViewController {
    
    //forkey
    let userDefaults:UserDefaults = UserDefaults.standard
    

    var LED1: Int = 0
    var LED2: Int = 0
    var LED3: Int = 0
    var LED4: Int = 0
    var LED5: Int = 0
    var LED6: Int = 0
    var LED7: Int = 0
    var LED8: Int = 0
    var LED9: Int = 0
    
    
    
    let picture0ON = UIImage(named: "kidoON")
    let picture1OFF = UIImage(named: "kidoOFF")
//    var pictureNnumber: Int = 0
    
    let picturecheckON = UIImage(named: "checkON")
    let picturecheckOFF = UIImage(named: "checkOFF")
    let picturecheckmukou = UIImage(named: "checkmukou")
    
    var kidotag:Int = 0
    
    var checkButtonArray = [Int]()

    var tagNumber1:Int = 0
    var tagNumber2:Int = 0
    var tagNumber3:Int = 0
    var tagNumber4:Int = 0
    var tagNumber5:Int = 0
    var tagNumber6:Int = 0
    var tagNumber7:Int = 0
    var tagNumber8:Int = 0
    var tagNumber9:Int = 0
    
    var gazouzyun1:Int = 0
    var gazouzyun2:Int = 0
    var gazouzyun3:Int = 0
    var gazouzyun4:Int = 0
    var gazouzyun5:Int = 0
    var gazouzyun6:Int = 0
    var gazouzyun7:Int = 0
    var gazouzyun8:Int = 0
    var gazouzyun9:Int = 0
    
    var total:Int = 0
    
    var modoruTap:Bool = false
    var modoruPinch:Bool = false
    
    
    @IBOutlet weak var zyunimageViwe1: UIImageView!
    @IBOutlet weak var zyunimageViwe2: UIImageView!
    @IBOutlet weak var zyunimageViwe3: UIImageView!
    @IBOutlet weak var zyunimageViwe4: UIImageView!
    @IBOutlet weak var zyunimageViwe5: UIImageView!
    @IBOutlet weak var zyunimageViwe6: UIImageView!
    @IBOutlet weak var zyunimageViwe7: UIImageView!
    @IBOutlet weak var zyunimageViwe8: UIImageView!
    @IBOutlet weak var zyunimageViwe9: UIImageView!
    
    
    @IBOutlet weak var test: UIButton!
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    private var zyunimageViwe: [UIImage] = []
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    @IBOutlet weak var checkView: CheckBox!
    
    @IBOutlet weak var kidoView1: UIButton!
    @IBOutlet weak var kidoView2: UIButton!
    @IBOutlet weak var kidoView3: UIButton!
    @IBOutlet weak var kidoView4: UIButton!
    @IBOutlet weak var kidoView5: UIButton!
    @IBOutlet weak var kidoView6: UIButton!
    @IBOutlet weak var kidoView7: UIButton!
    @IBOutlet weak var kidoView8: UIButton!
    @IBOutlet weak var kidoView9: UIButton!
    
    @IBOutlet weak var checkView1: UIButton!
    @IBOutlet weak var checkView2: UIButton!
    @IBOutlet weak var checkView3: UIButton!
    @IBOutlet weak var checkView4: UIButton!
    @IBOutlet weak var checkView5: UIButton!
    @IBOutlet weak var checkView6: UIButton!
    @IBOutlet weak var checkView7: UIButton!
    @IBOutlet weak var checkView8: UIButton!
    @IBOutlet weak var checkView9: UIButton!
    
    @IBOutlet weak var uiONTouch: UILabel!
    @IBOutlet weak var uiOFFpinch: UILabel!
    

    
    //???????????????????????????????????????????????????????????????????????????????????????????????????????????????
    @IBOutlet weak var uiSwitch: UISwitch!
    @IBAction func uiSwitch(_ sender: UISwitch) {
   
        if (sender.isOn){
             modoruTap = true
             userDefaults.set(self.modoruTap , forKey: "modoruTapkey")
             modoruPinch = false
            uiONTouch.textColor = UIColor(red: 58/255, green: 127/255, blue: 237/255, alpha: 1.0)
            uiOFFpinch.textColor = UIColor(red: 203/255, green: 203/255, blue: 203/255, alpha: 1.0)
            
            print("on")
            print("modoruTap???\(userDefaults.bool(forKey: "modoruTapkey"))")
            
        }
        else{
            modoruTap = false
            userDefaults.set(self.modoruTap , forKey: "modoruTapkey")
            modoruPinch = true
            
            uiONTouch.textColor = UIColor(red: 203/255, green: 203/255, blue: 203/255, alpha: 1.0)
            uiOFFpinch.textColor = UIColor(red: 58/255, green: 127/255, blue: 237/255, alpha: 1.0)
            print("off")
            print("modoruTap???\(userDefaults.bool(forKey: "modoruTapkey"))")
        }
        userDefaults.set(sender.isOn, forKey: "uiswtchkey")
    }
    
    
    
    
    @IBAction func zyunmodoru(_ sender: UIButton) {
    
       
        print("zyunban???????????????????????????????????????tagNumber1\(tagNumber1)")
        /*  ??????????????????         */
        //checkButtonArray???true ????????????tagNumber ????????????
        
        checkButtonArray = [Int]()
        
        if userDefaults.integer(forKey: "tagNumber1") == 1{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber1")]
        }
        
        else {
            checkButtonArray += [0]
        }
      
        
       if userDefaults.integer(forKey: "tagNumber2") == 2{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber2")]
        }
        
        else {
            checkButtonArray += [0]
        }
        
        if userDefaults.integer(forKey: "tagNumber3") == 3{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber3")]
        }

        else {
            checkButtonArray += [0]
        }
        
        if userDefaults.integer(forKey: "tagNumber4") == 4{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber4")]
        }

        else {
            checkButtonArray += [0]
        }
        
        if userDefaults.integer(forKey: "tagNumber5") == 5{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber5")]
        }

        else {
            checkButtonArray += [0]
        }
        
        if userDefaults.integer(forKey: "tagNumber6") == 6{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber6")]
        }

        else {
            checkButtonArray += [0]
        }
        
        if userDefaults.integer(forKey: "tagNumber7") == 7{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber7")]
        }

        else {
            checkButtonArray += [0]
        }
        
        if userDefaults.integer(forKey: "tagNumber8") == 8{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber8")]
        }

        else {
            checkButtonArray += [0]
        }
        
        if userDefaults.integer(forKey: "tagNumber9") == 9{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber9")]
        }

        else {
            checkButtonArray += [0]
        }
        
        
        //????????????????????????????????????????????????
        userDefaults.set(checkButtonArray , forKey: "checkButtonArray")
        
        //??????????????????
        checkButtonArray.sort { $0 < $1 }
        print("??????????????????????????????????????????????????????\(checkButtonArray)")
        
        
        // ???storyboard???????????????????????????
        let storyboard: UIStoryboard = self.storyboard!
        
        // ????????????ViewController???????????????????????????
        let nextView = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
     
        // ???????????????
        let vc = nextView
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
        sender.isSelected = !sender.isSelected;
    
        print("modoruTap???\(userDefaults.bool(forKey: "modoruTapkey"))")
    }
    
    
    ///////////////////????????????////////////////
    @IBAction func checkView(_ sender: CheckBox) {
        print(sender.isChecked)
        
        print("zyunban???checkView???????????????????????????tagNumber1\(tagNumber1)")
        
        //check????????????true ???????????? tagNumber??????tag ???????????????????????????
        switch sender.tag {
        case 1:
            if sender.isChecked == true{
                tagNumber1 = 1
                userDefaults.set(sender.isChecked , forKey: "tagBool1")
                userDefaults.set(tagNumber1 , forKey: "tagNumber1")
            }
            else
            {
                tagNumber1 = 0
                userDefaults.set(sender.isChecked , forKey: "tagBool1")
                userDefaults.set(tagNumber1 , forKey: "tagNumber1")
            }
            print("tagNumber1???\(tagNumber1)")
            print("tagNumber1???tagBool1???\(userDefaults.bool(forKey: "tagBool1"))")
            
            
        case 2:
            if sender.isChecked == true{
                tagNumber2 = 2
                userDefaults.set(sender.isChecked , forKey: "tagBool2")
                userDefaults.set(tagNumber2 , forKey: "tagNumber2")
            }
            else
            {
                tagNumber2 = 0
                userDefaults.set(sender.isChecked , forKey: "tagBool2")
                userDefaults.set(tagNumber2 , forKey: "tagNumber2")
            }
            print("tagNumber2???\(tagNumber2)")
            print("tagNumber1???tagBool2???\(userDefaults.bool(forKey: "tagBool2"))")
            
            
        case 3:
            if sender.isChecked == true{
                tagNumber3 = 3
                userDefaults.set(sender.isChecked , forKey: "tagBool3")
                userDefaults.set(tagNumber3 , forKey: "tagNumber3")
                
            }
            else
            {
                tagNumber3 = 0
                userDefaults.set(sender.isChecked , forKey: "tagBool3")
                userDefaults.set(tagNumber3 , forKey: "tagNumber3")
            }
            
            
        case 4:
            if sender.isChecked == true{
                tagNumber4 = 4
                userDefaults.set(sender.isChecked , forKey: "tagBool4")
                userDefaults.set(tagNumber4 , forKey: "tagNumber4")
                
            }
            else
            {
                tagNumber4 = 0
                userDefaults.set(sender.isChecked , forKey: "tagBool4")
                userDefaults.set(tagNumber4 , forKey: "tagNumber4")
            }
            
        case 5:
            if sender.isChecked == true{
                tagNumber5 = 5
                userDefaults.set(sender.isChecked , forKey: "tagBool5")
                userDefaults.set(tagNumber5 , forKey: "tagNumber5")
                
            }
            else
            {
                tagNumber5 = 0
                userDefaults.set(sender.isChecked , forKey: "tagBool5")
                userDefaults.set(tagNumber5 , forKey: "tagNumber5")
            }
            
        case 6:
            if sender.isChecked == true{
                tagNumber6 = 6
                userDefaults.set(sender.isChecked , forKey: "tagBool6")
                userDefaults.set(tagNumber6 , forKey: "tagNumber6")
                
            }
            else
            {
                tagNumber6 = 0
                userDefaults.set(sender.isChecked , forKey: "tagBool6")
                userDefaults.set(tagNumber6 , forKey: "tagNumber6")
            }
            
        case 7:
            if sender.isChecked == true{
                tagNumber7 = 7
                userDefaults.set(sender.isChecked , forKey: "tagBool7")
                userDefaults.set(tagNumber7 , forKey: "tagNumber7")
                
            }
            else
            {
                tagNumber7 = 0
                userDefaults.set(sender.isChecked , forKey: "tagBool7")
                userDefaults.set(tagNumber7 , forKey: "tagNumber7")
            }
            
        case 8:
            if sender.isChecked == true{
                tagNumber8 = 8
                userDefaults.set(sender.isChecked , forKey: "tagBool8")
                userDefaults.set(tagNumber8 , forKey: "tagNumber8")
                
            }
            else
            {
                tagNumber8 = 0
                userDefaults.set(sender.isChecked , forKey: "tagBool8")
                userDefaults.set(tagNumber8 , forKey: "tagNumber8")
            }
            
            
        default :
            if sender.isChecked == true{
                tagNumber9 = 9
                userDefaults.set(sender.isChecked , forKey: "tagBool9")
                userDefaults.set(tagNumber9 , forKey: "tagNumber9")
                
            }
            else
            {
                tagNumber9 = 0
                userDefaults.set(sender.isChecked , forKey: "tagBool9")
                userDefaults.set(tagNumber9 , forKey: "tagNumber9")
            }
            
            print("tagNumber3???tagBool3???\(userDefaults.bool(forKey: "tagBool9"))")
            
        }
        
        
    }
    
    @IBAction func kidoView(_ sender: UIButton) {
        
       
        switch sender.tag {
            
            //1???????????????LED??????????????????????????? Tag1
        case 1:
             
            print("if????????????????????????????????????????????????LED1\(LED1)")
            print("if?????????userDefaults\(userDefaults.integer(forKey: "LED1"))")
            
 //           LED1 = userDefaults.integer(forKey: "LED1")
            
            print("if????????????LED1???Defaults???????????????LED1\(LED1)")
            //LED1 == 0 ??????????????????????????????????????????????????????????????????????????????
            if self.LED1 == 0{
                self.LED1 = 1
                
                self.kidoView1.setImage(picture1OFF, for: .normal)
                userDefaults.set(self.LED1 , forKey: "LED1")
                print("???????????????????????????????????????LED1??????????????????\(LED1)")
            }
            else{
                //else ???????????????????????????????????????????????????????????????????????????????????????????????????
                self.LED1 = 0
                
                //???????????????
                
                print("???????????????????????????????????????LED1??????????????????\(LED1)")
                
                self.kidoView1.setImage(picture0ON, for: .normal)
                
                userDefaults.set(self.LED1 , forKey: "LED1")
                print("???????????????????????????????????????LED1 userDefaults??????\(userDefaults.integer(forKey: "LED1"))")
                
            }
            
            
        case 2:
            //            //LED2 == 0 ??????????????????????????????????????????????????????????????????????????????
            if self.LED2 == 0{
                self.LED2 = 1
                self.kidoView2.setImage(picture1OFF, for: .normal)
                userDefaults.set(self.LED2 , forKey: "LED2")
                
            }
            else{
                //else ???????????????????????????????????????????????????????????????????????????????????????????????????
                self.LED2 = 0
                self.kidoView2.setImage(picture0ON, for: .normal)
                userDefaults.set(self.LED2 , forKey: "LED2")
                //???????????????
            }
            
        case 3:
            //LED3 == 0 ??????????????????????????????????????????????????????????????????????????????
            if self.LED3 == 0{
                self.LED3 = 1
                self.kidoView3.setImage(picture1OFF, for: .normal)
                userDefaults.set(self.LED3 , forKey: "LED3")
            }
            else{
                //else ???????????????????????????????????????????????????????????????????????????????????????????????????
                self.LED3 = 0
                self.kidoView3.setImage(picture0ON, for: .normal)
                userDefaults.set(self.LED3 , forKey: "LED3")
                //???????????????
            }
            
        case 4:
            //            //LED2 == 0 ??????????????????????????????????????????????????????????????????????????????
            if self.LED4 == 0{
                self.LED4 = 1
                self.kidoView4.setImage(picture1OFF, for: .normal)
                userDefaults.set(self.LED4 , forKey: "LED4")
                
            }
            else{
                //else ???????????????????????????????????????????????????????????????????????????????????????????????????
                self.LED4 = 0
                self.kidoView4.setImage(picture0ON, for: .normal)
                userDefaults.set(self.LED4 , forKey: "LED4")
                //???????????????
            }
            
        case 5:
            //            //LED2 == 0 ??????????????????????????????????????????????????????????????????????????????
            if self.LED5 == 0{
                self.LED5 = 1
                self.kidoView5.setImage(picture1OFF, for: .normal)
                userDefaults.set(self.LED5 , forKey: "LED5")
                
            }
            else{
                //else ???????????????????????????????????????????????????????????????????????????????????????????????????
                self.LED5 = 0
                self.kidoView5.setImage(picture0ON, for: .normal)
                userDefaults.set(self.LED5 , forKey: "LED5")
                //???????????????
            }
            
        case 6:
            //            //LED2 == 0 ??????????????????????????????????????????????????????????????????????????????
            if self.LED6 == 0{
                self.LED6 = 1
                self.kidoView6.setImage(picture1OFF, for: .normal)
                userDefaults.set(self.LED6 , forKey: "LED6")
                
            }
            else{
                //else ???????????????????????????????????????????????????????????????????????????????????????????????????
                self.LED6 = 0
                self.kidoView6.setImage(picture0ON, for: .normal)
                userDefaults.set(self.LED6 , forKey: "LED6")
                //???????????????
            }
            
        case 7:
            //            //LED2 == 0 ??????????????????????????????????????????????????????????????????????????????
            if self.LED7 == 0{
                self.LED7 = 1
                self.kidoView7.setImage(picture1OFF, for: .normal)
                userDefaults.set(self.LED7 , forKey: "LED7")
                
            }
            else{
                //else ???????????????????????????????????????????????????????????????????????????????????????????????????
                self.LED7 = 0
                self.kidoView7.setImage(picture0ON, for: .normal)
                userDefaults.set(self.LED7 , forKey: "LED7")
                //???????????????
            }
            
        case 8:
            //            //LED2 == 0 ??????????????????????????????????????????????????????????????????????????????
            if self.LED8 == 0{
                self.LED8 = 1
                self.kidoView8.setImage(picture1OFF, for: .normal)
                userDefaults.set(self.LED8 , forKey: "LED8")
                
            }
            else{
                //else ???????????????????????????????????????????????????????????????????????????????????????????????????
                self.LED8 = 0
                self.kidoView8.setImage(picture0ON, for: .normal)
                userDefaults.set(self.LED8 , forKey: "LED8")
                //???????????????
            }
            
            
        default :
            //LED9 == 0 ??????????????????????????????????????????????????????????????????????????????
            if self.LED9 == 0{
                self.LED9 = 1
                self.kidoView9.setImage(picture1OFF, for: .normal)
                userDefaults.set(self.LED9 , forKey: "LED9")
            }
            else{
                //else ???????????????????????????????????????????????????????????????????????????????????????????????????
                self.LED9 = 0
                self.kidoView9.setImage(picture0ON, for: .normal)
                userDefaults.set(self.LED9 , forKey: "LED9")
                //???????????????
            }
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("?????????tag1???????????????LED1\(UserDefaults.standard.integer(forKey: "LED1"))")
        
        print("modoruTap???\(userDefaults.bool(forKey: "modoruTapkey"))")
        
      //  test.image = UIImage(named: "black")
        
        //????????????????????????????????????????????????????????????????????????ON???OFF??????????????????
        let uiswitchONOFF = userDefaults.bool(forKey: "modoruTapkey")
        print("uiswitch???\(uiswitchONOFF)")
        if uiswitchONOFF == true{
            uiSwitch.isOn = true
            uiONTouch.textColor = UIColor(red: 58/255, green: 127/255, blue: 237/255, alpha: 1.0)
            uiOFFpinch.textColor = UIColor.gray
        }
        else{
            uiSwitch.isOn = false
            uiOFFpinch.textColor = UIColor(red: 58/255, green: 127/255, blue: 237/255, alpha: 1.0)
            uiONTouch.textColor = UIColor.gray
        }
        
        userDefaults.set(checkButtonArray , forKey: "checkButtonArray")
        
        //  ?????????????????????????????????
        checkView1.imageView?.contentMode = .scaleAspectFill
        checkView1.contentHorizontalAlignment = .fill
        checkView1.contentVerticalAlignment = .fill
        
        LED1 = userDefaults.integer(forKey: "LED1")
        LED2 = userDefaults.integer(forKey: "LED2")
        LED3 = userDefaults.integer(forKey: "LED3")
        LED4 = userDefaults.integer(forKey: "LED4")
        LED5 = userDefaults.integer(forKey: "LED5")
        LED6 = userDefaults.integer(forKey: "LED6")
        LED7 = userDefaults.integer(forKey: "LED7")
        LED8 = userDefaults.integer(forKey: "LED8")
        LED9 = userDefaults.integer(forKey: "LED9")
        
        //LED1 == 0 ?????????????????????
        print("????????????????????????LED1??????????????????\(userDefaults.integer(forKey: "LED1"))")
        
        
        if userDefaults.integer(forKey: "LED1") == 0
        {
            self.kidoView1.setImage(picture0ON, for: .normal)
            print("?????????????????????????????????????????????\(userDefaults.integer(forKey: "LED1"))")
        }
        else
        {
            self.kidoView1.setImage(picture1OFF, for: .normal)
            print("????????????????????????????????????????????????\(userDefaults.integer(forKey: "LED1"))")
        }
        
        if userDefaults.integer(forKey: "LED2") == 0
        {
            self.kidoView2.setImage(picture0ON, for: .normal)
        }
        else
        {
            self.kidoView2.setImage(picture1OFF, for: .normal)
        }
        
        
        if userDefaults.integer(forKey: "LED3") == 0
        {
            self.kidoView3.setImage(picture0ON, for: .normal)
        }
        else
        {
            self.kidoView3.setImage(picture1OFF, for: .normal)
        }
        
        if userDefaults.integer(forKey: "LED4") == 0
        {
            self.kidoView4.setImage(picture0ON, for: .normal)
        }
        else
        {
            self.kidoView4.setImage(picture1OFF, for: .normal)
        }
        
        if userDefaults.integer(forKey: "LED5") == 0
        {
            self.kidoView5.setImage(picture0ON, for: .normal)
        }
        else
        {
            self.kidoView5.setImage(picture1OFF, for: .normal)
        }
        
        if userDefaults.integer(forKey: "LED6") == 0
        {
            self.kidoView6.setImage(picture0ON, for: .normal)
        }
        else
        {
            self.kidoView6.setImage(picture1OFF, for: .normal)
        }
        
        if userDefaults.integer(forKey: "LED7") == 0
        {
            self.kidoView7.setImage(picture0ON, for: .normal)
        }
        else
        {
            self.kidoView7.setImage(picture1OFF, for: .normal)
        }
        
        if userDefaults.integer(forKey: "LED8") == 0
        {
            self.kidoView8.setImage(picture0ON, for: .normal)
        }
        else
        {
            self.kidoView8.setImage(picture1OFF, for: .normal)
        }
        
        if userDefaults.integer(forKey: "LED9") == 0
        {
            self.kidoView9.setImage(picture0ON, for: .normal)
        }
        else
        {
            self.kidoView9.setImage(picture1OFF, for: .normal)
        }
        
        
        print("??????????????????????????????tagBool1???\(userDefaults.bool(forKey: "tagBool1"))")
        
        //???????????????????????????????????????????????????????????????????????????????????????????????????
        if userDefaults.bool(forKey: "tagBool1")
        {
            self.checkView1.setImage(picturecheckON, for: .normal)
            self.tagNumber1 = 1
        }
        else
        {
            self.checkView1.setImage(picturecheckOFF, for: .normal)
            self.tagNumber1 = 0
        }
        
        if userDefaults.bool(forKey: "tagBool2")
        {
            self.checkView2.setImage(picturecheckON, for: .normal)
            self.tagNumber2 = 1
        }
        else
        {
            self.checkView2.setImage(picturecheckOFF, for: .normal)
            self.tagNumber2 = 0
        }
        
        
        if userDefaults.bool(forKey: "tagBool3")
        {
            self.checkView3.setImage(picturecheckON, for: .normal)
            self.tagNumber3 = 1
        }
        else
        {
            self.checkView3.setImage(picturecheckOFF, for: .normal)
            self.tagNumber3 = 0
        }
        
            print("if?????????tagNumber3???\(userDefaults.integer(forKey: "tagNumber3"))")
            
        if userDefaults.bool(forKey: "tagBool4")
        {
            self.checkView4.setImage(picturecheckON, for: .normal)
            self.tagNumber4 = 1
        }
        else
        {
            self.checkView4.setImage(picturecheckOFF, for: .normal)
            self.tagNumber4 = 0
        }
        
        if userDefaults.bool(forKey: "tagBool5")
        {
            self.checkView5.setImage(picturecheckON, for: .normal)
            self.tagNumber5 = 1
        }
        else
        {
            self.checkView5.setImage(picturecheckOFF, for: .normal)
            self.tagNumber5 = 0
        }
        
        if userDefaults.bool(forKey: "tagBool6")
        {
            self.checkView6.setImage(picturecheckON, for: .normal)
            self.tagNumber6 = 1
        }
        else
        {
            self.checkView6.setImage(picturecheckOFF, for: .normal)
            self.tagNumber6 = 0
        }
        
        if userDefaults.bool(forKey: "tagBool7")
        {
            self.checkView7.setImage(picturecheckON, for: .normal)
            self.tagNumber7 = 1
        }
        else
        {
            self.checkView7.setImage(picturecheckOFF, for: .normal)
            self.tagNumber7 = 0
        }
        
        if userDefaults.bool(forKey: "tagBool8")
        {
            self.checkView8.setImage(picturecheckON, for: .normal)
            self.tagNumber8 = 1
        }
        else
        {
            self.checkView8.setImage(picturecheckOFF, for: .normal)
            self.tagNumber8 = 0
        }
        
        if userDefaults.bool(forKey: "tagBool9")
        {
            self.checkView9.setImage(picturecheckON, for: .normal)
            self.tagNumber9 = 1
        }
        else
        {
            self.checkView9.setImage(picturecheckOFF, for: .normal)
            self.tagNumber9 = 0
        }
        
        
        
        //???????????????????????????
        //????????????(???)
        self.zyunimageViwe1.layer.borderColor = UIColor.blue.cgColor
        //????????????(??????)
        self.zyunimageViwe1.layer.borderWidth = 2
        
        //???????????????????????????
        //????????????(???)
        self.zyunimageViwe2.layer.borderColor = UIColor.blue.cgColor
        //????????????(??????)
        self.zyunimageViwe2.layer.borderWidth = 2
        
        //???????????????????????????
        //????????????(???)
        self.zyunimageViwe3.layer.borderColor = UIColor.blue.cgColor
        //????????????(??????)
        self.zyunimageViwe3.layer.borderWidth = 2
        
        
        //???????????????????????????
        //????????????(???)
        self.zyunimageViwe4.layer.borderColor = UIColor.blue.cgColor
        //????????????(??????)
        self.zyunimageViwe4.layer.borderWidth = 2
        
        //???????????????????????????
        //????????????(???)
        self.zyunimageViwe5.layer.borderColor = UIColor.blue.cgColor
        //????????????(??????)
        self.zyunimageViwe5.layer.borderWidth = 2
        
        //???????????????????????????
        //????????????(???)
        self.zyunimageViwe6.layer.borderColor = UIColor.blue.cgColor
        //????????????(??????)
        self.zyunimageViwe6.layer.borderWidth = 2
        
        //???????????????????????????
        //????????????(???)
        self.zyunimageViwe7.layer.borderColor = UIColor.blue.cgColor
        //????????????(??????)
        self.zyunimageViwe7.layer.borderWidth = 2
        
        //???????????????????????????
        //????????????(???)
        self.zyunimageViwe8.layer.borderColor = UIColor.blue.cgColor
        //????????????(??????)
        self.zyunimageViwe8.layer.borderWidth = 2
        
        //???????????????????????????
        //????????????(???)
        self.zyunimageViwe9.layer.borderColor = UIColor.blue.cgColor
        //????????????(??????)
        self.zyunimageViwe9.layer.borderWidth = 2
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        checkView1.imageView?.contentMode = .scaleAspectFit
        checkView1.contentHorizontalAlignment = .fill
        checkView1.contentVerticalAlignment = .fill
        
        //?????????????????????????????????????????????????????????????????????
        checkButtonArray = UserDefaults.standard.object(forKey: "checkButtonArray") as! [Int]
       
        print("zyu????????????????????????tagNumber1???\(tagNumber1)")
        print("zyu????????????????????????tagNumber??????\(tagNumber2)")
        print("zyu????????????????????????tagNumber??????\(tagNumber3)")
        
         
        
        //??????????????????????????????iro1?????????????????????
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber1 = userDefaults.integer(forKey: "iro1")
        self.gazouzyun1 = iroNumber1
        print("zyunban???iroNumber???\(tagNumber1)")
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        //??????????????????????????????iro2?????????????????????
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber2 = userDefaults.integer(forKey: "iro2")
        self.gazouzyun2 = iroNumber2
        print("zyunban???iroNumber2???\(tagNumber2)")
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        //??????????????????????????????iro3?????????????????????
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber3 = userDefaults.integer(forKey: "iro3")
        self.gazouzyun3 = iroNumber3
        print("zyunban???iroNumber3???\(tagNumber3)")
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        //??????????????????????????????iro4?????????????????????
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber4 = userDefaults.integer(forKey: "iro4")
        self.gazouzyun4 = iroNumber4
        print("zyunban???iroNumber4???\(tagNumber4)")
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        //??????????????????????????????iro5?????????????????????
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber5 = userDefaults.integer(forKey: "iro5")
        self.gazouzyun5 = iroNumber5
        print("zyunban???iroNumber5???\(tagNumber5)")
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        //??????????????????????????????iro6?????????????????????
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber6 = userDefaults.integer(forKey: "iro6")
        self.gazouzyun6 = iroNumber6
        print("zyunban???iroNumber6???\(tagNumber6)")
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        //??????????????????????????????iro7?????????????????????
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber7 = userDefaults.integer(forKey: "iro7")
        self.gazouzyun7 = iroNumber7
        print("zyunban???iroNumber7???\(tagNumber7)")
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        //??????????????????????????????iro8?????????????????????
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber8 = userDefaults.integer(forKey: "iro8")
        self.gazouzyun8 = iroNumber8
        print("zyunban???iroNumber8???\(tagNumber8)")
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        //??????????????????????????????iro9?????????????????????
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber9 = userDefaults.integer(forKey: "iro9")
        self.gazouzyun9 = iroNumber9
        print("zyunban???iroNumber9???\(tagNumber9)")
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        
        
        
        //zyunimageView??????????????????????????????iroNumber?????????????????????
        
        switch iroNumber1{
        case 1 :
            zyunimageViwe1.image = UIImage(named: "black")
        case 2 :
            zyunimageViwe1.image = UIImage(named: "white")
        case 3:
            zyunimageViwe1.image = UIImage(named: "red")
            
        case 4:
            zyunimageViwe1.image = UIImage(named: "blue")
        case 5:
            zyunimageViwe1.image = UIImage(named: "green")
        case 6:
            zyunimageViwe1.image = UIImage(named: "yellow")
            
        case 7:
            zyunimageViwe1.image = UIImage(named: "pink")
        case 8:
            zyunimageViwe1.image = UIImage(named: "orange")
        case 9:
            zyunimageViwe1.image = UIImage(named: "purple")
            
            
            
        default:
            zyunimageViwe1.image = UIImage(named: "gazounashi")
          
            self.checkView1.setImage(picturecheckmukou, for: .normal)
            checkView1.isEnabled = false
           
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            tagNumber1 = 0
            userDefaults.set(tagNumber1 , forKey: "tagNumber1")
            print("zyunban????????????????????????????????????tagNumber\(tagNumber1)")
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
        }
        
        
        switch iroNumber2{
        case 1 :
            zyunimageViwe2.image = UIImage(named: "black")
        case 2 :
            zyunimageViwe2.image = UIImage(named: "white")
        case 3:
            zyunimageViwe2.image = UIImage(named: "red")
            
        case 4:
            zyunimageViwe2.image = UIImage(named: "blue")
        case 5:
            zyunimageViwe2.image = UIImage(named: "green")
        case 6:
            zyunimageViwe2.image = UIImage(named: "yellow")
            
        case 7:
            zyunimageViwe2.image = UIImage(named: "pink")
        case 8:
            zyunimageViwe2.image = UIImage(named: "orange")
        case 9:
            zyunimageViwe2.image = UIImage(named: "purple")
            
        default:
            zyunimageViwe2.image = UIImage(named: "gazounashi")
            
            self.checkView2.setImage(picturecheckmukou, for: .normal)
            checkView2.isEnabled = false
            
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            tagNumber2 = 0
            userDefaults.set(tagNumber2 , forKey: "tagNumber2")
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
        }
        
        switch iroNumber3{
        case 1 :
            zyunimageViwe3.image = UIImage(named: "black")
        case 2 :
            zyunimageViwe3.image = UIImage(named: "white")
        case 3:
            zyunimageViwe3.image = UIImage(named: "red")
            
        case 4:
            zyunimageViwe3.image = UIImage(named: "blue")
        case 5:
            zyunimageViwe3.image = UIImage(named: "green")
        case 6:
            zyunimageViwe3.image = UIImage(named: "yellow")
            
        case 7:
            zyunimageViwe3.image = UIImage(named: "pink")
        case 8:
            zyunimageViwe3.image = UIImage(named: "orange")
        case 9:
            zyunimageViwe3.image = UIImage(named: "purple")
            
        default:
            zyunimageViwe3.image = UIImage(named: "gazounashi")
            
            self.checkView3.setImage(picturecheckmukou, for: .normal)
            checkView3.isEnabled = false
            
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            tagNumber3 = 0
            userDefaults.set(tagNumber3 , forKey: "tagNumber3")
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
        }
            
        switch iroNumber4{
        case 1 :
            zyunimageViwe4.image = UIImage(named: "black")
        case 2 :
            zyunimageViwe4.image = UIImage(named: "white")
        case 3:
            zyunimageViwe4.image = UIImage(named: "red")
            
        case 4:
            zyunimageViwe4.image = UIImage(named: "blue")
        case 5:
            zyunimageViwe4.image = UIImage(named: "green")
        case 6:
            zyunimageViwe4.image = UIImage(named: "yellow")
            
        case 7:
            zyunimageViwe4.image = UIImage(named: "pink")
        case 8:
            zyunimageViwe4.image = UIImage(named: "orange")
        case 9:
            zyunimageViwe4.image = UIImage(named: "purple")
            
        default:
            zyunimageViwe4.image = UIImage(named: "gazounashi")
            
            self.checkView4.setImage(picturecheckmukou, for: .normal)
            checkView4.isEnabled = false
            
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            tagNumber4 = 0
            userDefaults.set(tagNumber4 , forKey: "tagNumber4")
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
        }
        
        
        switch iroNumber5{
        case 1 :
            zyunimageViwe5.image = UIImage(named: "black")
        case 2 :
            zyunimageViwe5.image = UIImage(named: "white")
        case 3:
            zyunimageViwe5.image = UIImage(named: "red")
            
        case 4:
            zyunimageViwe5.image = UIImage(named: "blue")
        case 5:
            zyunimageViwe5.image = UIImage(named: "green")
        case 6:
            zyunimageViwe5.image = UIImage(named: "yellow")
            
        case 7:
            zyunimageViwe5.image = UIImage(named: "pink")
        case 8:
            zyunimageViwe5.image = UIImage(named: "orange")
        case 9:
            zyunimageViwe5.image = UIImage(named: "purple")
            
        default:
            zyunimageViwe5.image = UIImage(named: "gazounashi")
            
            self.checkView5.setImage(picturecheckmukou, for: .normal)
            checkView5.isEnabled = false
            
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            tagNumber5 = 0
            userDefaults.set(tagNumber5 , forKey: "tagNumber5")
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
        }
        
        switch iroNumber6{
        case 1 :
            zyunimageViwe6.image = UIImage(named: "black")
        case 2 :
            zyunimageViwe6.image = UIImage(named: "white")
        case 3:
            zyunimageViwe6.image = UIImage(named: "red")
            
        case 4:
            zyunimageViwe6.image = UIImage(named: "blue")
        case 5:
            zyunimageViwe6.image = UIImage(named: "green")
        case 6:
            zyunimageViwe6.image = UIImage(named: "yellow")
            
        case 7:
            zyunimageViwe6.image = UIImage(named: "pink")
        case 8:
            zyunimageViwe6.image = UIImage(named: "orange")
        case 9:
            zyunimageViwe6.image = UIImage(named: "purple")
            
        default:
            zyunimageViwe6.image = UIImage(named: "gazounashi")
            
            self.checkView6.setImage(picturecheckmukou, for: .normal)
            checkView6.isEnabled = false
            
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            tagNumber6 = 0
            userDefaults.set(tagNumber6 , forKey: "tagNumber6")
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
        }
        
        switch iroNumber7{
        case 1 :
            zyunimageViwe7.image = UIImage(named: "black")
        case 2 :
            zyunimageViwe7.image = UIImage(named: "white")
        case 3:
            zyunimageViwe7.image = UIImage(named: "red")
            
        case 4:
            zyunimageViwe7.image = UIImage(named: "blue")
        case 5:
            zyunimageViwe7.image = UIImage(named: "green")
        case 6:
            zyunimageViwe7.image = UIImage(named: "yellow")
            
        case 7:
            zyunimageViwe7.image = UIImage(named: "pink")
        case 8:
            zyunimageViwe7.image = UIImage(named: "orange")
        case 9:
            zyunimageViwe7.image = UIImage(named: "purple")
            
        default:
            zyunimageViwe7.image = UIImage(named: "gazounashi")
            
            self.checkView7.setImage(picturecheckmukou, for: .normal)
            checkView7.isEnabled = false
            
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            tagNumber7 = 0
            userDefaults.set(tagNumber7 , forKey: "tagNumber7")
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
        }
        
        switch iroNumber8{
        case 1 :
            zyunimageViwe8.image = UIImage(named: "black")
        case 2 :
            zyunimageViwe8.image = UIImage(named: "white")
        case 3:
            zyunimageViwe8.image = UIImage(named: "red")
            
        case 4:
            zyunimageViwe8.image = UIImage(named: "blue")
        case 5:
            zyunimageViwe8.image = UIImage(named: "green")
        case 6:
            zyunimageViwe8.image = UIImage(named: "yellow")
            
        case 7:
            zyunimageViwe8.image = UIImage(named: "pink")
        case 8:
            zyunimageViwe8.image = UIImage(named: "orange")
        case 9:
            zyunimageViwe8.image = UIImage(named: "purple")
            
        default:
            zyunimageViwe8.image = UIImage(named: "gazounashi")
            
            self.checkView8.setImage(picturecheckmukou, for: .normal)
            checkView8.isEnabled = false
            
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            tagNumber8 = 0
            userDefaults.set(tagNumber8 , forKey: "tagNumber8")
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
        }
        
        switch iroNumber9{
        case 1 :
            zyunimageViwe9.image = UIImage(named: "black")
        case 2 :
            zyunimageViwe9.image = UIImage(named: "white")
        case 3:
            zyunimageViwe9.image = UIImage(named: "red")
            
        case 4:
            zyunimageViwe9.image = UIImage(named: "blue")
        case 5:
            zyunimageViwe9.image = UIImage(named: "green")
        case 6:
            zyunimageViwe9.image = UIImage(named: "yellow")
            
        case 7:
            zyunimageViwe9.image = UIImage(named: "pink")
        case 8:
            zyunimageViwe9.image = UIImage(named: "orange")
        case 9:
            zyunimageViwe9.image = UIImage(named: "purple")
            
        default:
            zyunimageViwe9.image = UIImage(named: "gazounashi")
            
            self.checkView9.setImage(picturecheckmukou, for: .normal)
            checkView9.isEnabled = false
            
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            tagNumber9 = 0
            userDefaults.set(tagNumber9 , forKey: "tagNumber9")
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
        }
        
        print("viewWillAppear???????????????\(userDefaults.integer(forKey: "LED1"))")
        
    }
    
    
}

//
//  TestViewController.swift
//  Plants_test1
//
//  Created by 이진휘 on 01/10/2019.
//  Copyright © 2019 MyAppDevelopment. All rights reserved.
//

import UIKit

var resultPlant : String = ""
var resultPlace : String = ""

class TestViewController: UIViewController {
    
    @IBOutlet weak var TestNavigationItems: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.tintColor = UIColor(red: 89/256, green: 150/256, blue: 96/256, alpha: 1)
    }
    
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var lightConditionLabel: UILabel!
    @IBOutlet weak var experienceLabel: UILabel!
    @IBOutlet weak var placeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var sizeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var lightConditionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var experienceSegmentedControl: UISegmentedControl!
    @IBOutlet weak var showResultButton: UIButton!
    
    var place : String = ""
    var size : String = ""
    var lightCondition : String = ""
    var experience : String = ""
    
    @IBAction func placeChanged(_ sender: Any) {
        switch placeSegmentedControl.selectedSegmentIndex
        {
            case 0 :
                place = "베란다"
            case 1 :
                place = "거실"
            case 2 :
                place = "침실"
            case 3 :
                place = "서재"
            case 4 :
                place = "부엌"
            default:
                break
        }
    }
    
    @IBAction func sizeChanged(_ sender: Any) {
        switch sizeSegmentedControl.selectedSegmentIndex
        {
            case 0 :
                size = "3평 이하"
            case 1 :
                size = "3평~10평"
            case 2 :
                size = "10평~20평"
            case 3 :
                size = "20평 이상"
            default:
                break
        }
    }
    
    @IBAction func lightConditionChanged(_ sender: Any) {
        switch lightConditionSegmentedControl.selectedSegmentIndex
        {
            case 0 :
                lightCondition = "별로 안들어요"
            case 1 :
                lightCondition = "보통이에요"
            case 2 :
                lightCondition = "매우 잘들어요"
            default:
                break
        }
    }
    
    @IBAction func experienceChanged(_ sender: Any) {
        switch experienceSegmentedControl.selectedSegmentIndex
        {
            case 0 :
                experience = "별로 없어요"
            case 1 :
                experience = "보통이에요"
            case 2 :
                experience = "많아요"
            default:
                break
        }
    }
    
    @IBAction func showResultButton(_ sender: Any) {
        if place == "베란다" {
            if size == "3평 이하" {
                if lightCondition == "매우 잘들어요" {
                    if experience == "많아요" {
                        resultPlant = "꽃베고니아"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "애플민트"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "레몬버베나"
                    }
                }
                else if lightCondition == "보통이에요" {
                    if experience == "많아요" {
                        resultPlant = "심비디움"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "장미허브"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "자금우"
                    }
                }
                else if lightCondition == "별로 안들어요" {
                if experience == "많아요" {
                    resultPlant = "틸란드시아 '이오난사'"
                }
                else if experience == "보통이에요" {
                    resultPlant = "깃털이끼"
                }
                else if experience == "별로 없어요" {
                    resultPlant = "산호수"
                }
            }
        }
            else if size == "3평~10평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "라벤더"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "로즈마리"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "아이비"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "관엽베고니아"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "디펜바키아 '마리안느'"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "보스톤고사리"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "필로덴드론 '콩고'"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "봉의꼬리"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "넉줄고사리"
                    }
                }
            }
            else if size == "10평~20평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "만병초"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "소나무"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "돈나무"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "드라세나 '와네키'"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "스파티필럼"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "멕시코소철"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "필로덴드론 '셀륨'"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '홍콩'"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "드라세나 '맛상게아나'"
                    }
                }
            }
            else if size == "20평 이상" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "만병초"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "구아바"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "멕시코소철"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "아레카야자"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "인도고무나무"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "남천"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "디지고데카"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '액티노필라'"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "드라세나 '마지나타'"
                    }
                }
            }
            resultPlace = "베란다"
        }
        else if place == "거실" {
            if size == "3평 이하" {
                if lightCondition == "매우 잘들어요" {
                    if experience == "많아요" {
                        resultPlant = "안스리움"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "호야"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "꽃아카다"
                    }
                }
                else if lightCondition == "보통이에요" {
                    if experience == "많아요" {
                        resultPlant = "레몬버베나"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "싱고니움"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "페페로미아"
                    }
                }
                else if lightCondition == "별로 안들어요" {
                if experience == "많아요" {
                    resultPlant = "틸란드시아 '이오난사'"
                }
                else if experience == "보통이에요" {
                    resultPlant = "산호수"
                }
                else if experience == "별로 없어요" {
                    resultPlant = "페페로미아"
                }
            }
        }
            else if size == "3평~10평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "꽃베고니아"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "관엽베고니아"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "제라늄"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "디펜바키아 '마리안느'"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "클로로피텀 (접란)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "넉줄고사리"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "수염 틸란드시아"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "틸란드시아 '이오난사'"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "봉의꼬리"
                    }
                }
            }
            else if size == "10평~20평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "파키라"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "파키라"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "팔손이"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "드라세나 '마지나타'"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "보스톤고사리"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "드라세나 '와네키'"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "수염 틸란드시아"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "틸란드시아 '이오난사'"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "관음죽"
                    }
                }
            }
            else if size == "20평 이상" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "아레카야자"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "구아바"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "멕시코소철"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "필로덴드론 '셀륨'"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "파키라"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "인도고무나무"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "디지고데카"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '액티노필라'"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "행운목"
                    }
                }
            }
            resultPlace = "거실"
        }
        else if place == "침실" {
            if size == "3평 이하" {
                if lightCondition == "매우 잘들어요" {
                    if experience == "많아요" {
                        resultPlant = "꽃베고니아"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "꽃아카다"
                    }
                    else if experience == "별로 안들어요" {
                        resultPlant = "선인장"
                    }
                }
                else if lightCondition == "보통이에요" {
                    if experience == "많아요" {
                        resultPlant = "나도풍란"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "피토니아"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "꽃아카다"
                    }
                }
                else if lightCondition == "별로 안들어요" {
                if experience == "많아요" {
                    resultPlant = "비단이끼"
                }
                else if experience == "보통이에요" {
                    resultPlant = "아글라오네마"
                }
                else if experience == "별로 없어요" {
                    resultPlant = "스킨답터스"
                }
            }
        }
            else if size == "3평~10평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "심비디움"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "레몬버베나"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "호야"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "나도풍란"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "호접란"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "페퍼민트"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "필로덴드론 '선라이트'"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "비단이끼"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스파티필럼"
                    }
                }
            }
            else if size == "10평~20평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "호접란"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "마삭줄"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "벵갈고무나무"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "나도풍란"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "파키라"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "산세베리아"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "필로덴드론 '셀륨'"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '홍콩'"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스파티필럼"
                    }
                }
            }
            else if size == "20평 이상" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "마삭줄"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "멕시코소철"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "돈나무"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "아레카야자"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "파키라"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "벤자민고무나무"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "디펜바키아 '마리안느'"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '홍콩'"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스파티필럼"
                    }
                }
            }
            resultPlace = "침실"
        }
        else if place == "서재" {
            if size == "3평 이하" {
                if lightCondition == "매우 잘들어요" {
                    if experience == "많아요" {
                        resultPlant = "라벤더"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "애플민트"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "자금우"
                    }
                }
                else if lightCondition == "보통이에요" {
                    if experience == "많아요" {
                        resultPlant = "아글라오네마"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "로즈마리"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "제라늄"
                    }
                }
                else if lightCondition == "별로 안들어요" {
                if experience == "많아요" {
                    resultPlant = "칼라데아"
                }
                else if experience == "보통이에요" {
                    resultPlant = "깃털이끼"
                }
                else if experience == "별로 없어요" {
                    resultPlant = "산호수"
                }
            }
        }
            else if size == "3평~10평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "라벤더"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "장미허브"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "자금우"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "로즈마리"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "산호수"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "스파티필럼"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "칼라데아"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "털머위"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "피토니아"
                    }
                }
            }
            else if size == "10평~20평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "아레카야자"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "마삭줄"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "팔손이"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "디펜바키아 '트로픽스노우'"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "피닉스야자"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "벵갈고무나무"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "필로덴드론 '셀륨'"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "아글라오네마"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스파티필럼"
                    }
                }
            }
            else if size == "20평 이상" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "아레카야자"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "마삭줄"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "팔손이"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "필로덴드론 '셀륨'"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "관음죽"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "벤자민고무나무"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "칼라데아"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '액티노필라'"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "쉐프렐라 '홍콩'"
                    }
                }
            }
            resultPlace = "침실"
        }
        else if place == "부엌" {
            if size == "3평 이하" {
                if lightCondition == "매우 잘들어요" {
                    if experience == "많아요" {
                        resultPlant = "안스리움"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "장미허브"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "레몬버베나"
                    }
                }
                else if lightCondition == "보통이에요" {
                    if experience == "많아요" {
                        resultPlant = "싱고니움"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "레몬버베나"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스킨답서스"
                    }
                }
                else if lightCondition == "별로 안들어요" {
                if experience == "많아요" {
                    resultPlant = "싱고니움"
                }
                else if experience == "보통이에요" {
                    resultPlant = "스킨답서스"
                }
                else if experience == "별로 없어요" {
                    resultPlant = "스킨답서스"
                }
            }
        }
            else if size == "3평~10평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "안스리움"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "페퍼민트"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "제라늄"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "필로덴드론 '선라이트'"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "클로로피턴 (접란)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "스킨답서스"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "싱고니움"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "백량금"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스킨답서스"
                    }
                }
            }
            else if size == "10평~20평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "안스리움"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "소나무"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "산세베리아"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "필로덴드론 '선라이트'"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "클로로피텀 (접란)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "백량금"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "디펜바키아 '트로픽스노우'"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '홍콩'"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스킨답서스"
                    }
                }
            }
            else if size == "20평 이상" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "페퍼민트"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "팔손이"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "돈나무"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "클로로피텀 (접란)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "넉줄고사리"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "스킨답서스"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "백량금"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '홍콩'"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스킨답서스"
                    }
                }
            }
            resultPlace = "부엌"
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
}

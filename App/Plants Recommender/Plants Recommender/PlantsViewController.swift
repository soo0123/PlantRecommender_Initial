//
//  PlantsViewController.swift
//  Charts
//
//  Created by 이진휘 on 03/10/2019.
//

import UIKit
import DDSpiderChart

class PlantsViewController: UIViewController {
    
    @IBOutlet weak var spiderChart: DDSpiderChartView!
    @IBOutlet weak var plantName: UILabel!
    @IBOutlet weak var plantImage: UIImageView!
    @IBOutlet weak var plantType: UILabel!
    @IBOutlet weak var plantDifficulty: UILabel!
    @IBOutlet weak var plantRecommendPlace: UILabel!
    
    @IBOutlet weak var addPlantButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.tintColor = UIColor(red: 89/256, green: 150/256, blue: 96/256, alpha: 1)
        
        plantName.text = resultPlant
        plantImage.image = UIImage(named: resultPlant)
        for i in myPlants {
            if i.0 as String == resultPlant {
                if i.3 as String == "" {
                    plantType.text = ""
                }
                else {
                    plantType.text = i.3 as String
                }
                if i.2 as String == "" {
                    plantDifficulty.text = ""
                }
                else {
                    plantDifficulty.text = "난이도 : " + (i.2 as String)
                }
                if i.4 as String == "" {
                    plantRecommendPlace.text = ""
                }
                else {
                    plantRecommendPlace.text = "추천 장소 : " +  (i.4 as String)
                }
                spiderChart.axes = ["Formaldehyde 정화능력", "VOCs 제거능력", "CO2 & CO 제거능력", "음이온 발생능력", "가습 능력"]
                spiderChart.addDataSet(values: [(i.1)[0] / 5, (i.1)[1] / 5, (i.1)[2] / 5, (i.1)[3] / 5, (i.1)[4] / 5], color: UIColor(red: 89/256, green: 150/256, blue: 96/256, alpha: 1))
            }
        }
        
    }
    
    @IBAction func addPlant(_ sender: UIButton) {
        
        if resultPlace == "거실" {
            RoomArray[0].add(resultPlant)
            if isEmpty[0] {
                isEmpty[0] = false
            }
        }
        else if resultPlace == "베란다" {
            RoomArray[1].add(resultPlant)
            if isEmpty[1] {
                isEmpty[1] = false
            }
        }
        else if resultPlace == "침실" {
            RoomArray[2].add(resultPlant)
            if isEmpty[2] {
                isEmpty[2] = false
            }
        }
        else if resultPlace == "서재" {
            RoomArray[3].add(resultPlant)
            if isEmpty[3] {
                isEmpty[3] = false
            }
        }
        else if resultPlace == "부엌" {
            RoomArray[4].add(resultPlant)
            if isEmpty[4] {
                isEmpty[4] = false
            }
        }
        
    }
    
    func attributedAxisLabel(_ label: String) -> NSAttributedString {
        let attributedString = NSMutableAttributedString()
        attributedString.append(NSAttributedString(string: label, attributes: [NSAttributedString.Key.foregroundColor: UIColor.black, NSAttributedString.Key.font: UIFont(name: "AvenirNextCondensed-Bold", size: 16)!]))
        return attributedString
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}

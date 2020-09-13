//
//  PlantsImformationViewController.swift
//  Plants_test1
//
//  Created by 이주영 on 2019/12/26.
//  Copyright © 2019 MyAppDevelopment. All rights reserved.
//

import UIKit
import DDSpiderChart

class PlantsImformationViewController: UIViewController {

    @IBOutlet weak var plantName: UILabel!
    @IBOutlet weak var plantImage: UIImageView!
    @IBOutlet weak var plantType: UILabel!
    @IBOutlet weak var plantDifficulty: UILabel!
    @IBOutlet weak var plantRecommendPlace: UILabel!
    
    @IBOutlet weak var spiderChart: DDSpiderChartView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if cellPlant == "" {
            self.title = "식물을 추천받으세요!"
            self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor(red: 89/256, green: 150/256, blue: 96/256, alpha: 1)]
            self.navigationController?.navigationBar.tintColor = UIColor(red: 89/256, green: 150/256, blue: 96/256, alpha: 1)
            plantName.text = ""
            plantImage.image = nil
            plantType.text = ""
            plantRecommendPlace.text = ""
            plantDifficulty.text = ""
            spiderChart.color = .white
            
        }
        else {
            self.navigationController?.navigationBar.tintColor = UIColor(red: 89/256, green: 150/256, blue: 96/256, alpha: 1)
            plantName.text = cellPlant
            plantImage.image = UIImage(named: cellPlant)
            for i in myPlants {
                if i.0 as String == cellPlant {
                    plantType.text = i.3 as String
                    plantDifficulty.text = "난이도 : " + (i.2 as String)
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
        // Do any additional setup after loading the view.
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

//
//  MyPlantsTableViewController.swift
//  Plants_test1
//
//  Created by 이진휘 on 13/07/2019.
//  Copyright © 2019 MyAppDevelopment. All rights reserved.
//

import UIKit

var myPlants : [(NSString, [Float], NSString, NSString, NSString, NSString)] =
//[["이름", [0, 0, 0, 0, 0], "관리 난이도", "타입", "추천 장소", "주의"]]
[("남천", [5, 3, 3, 2, 3], "쉬움", "자생식물", "거실, 베란다", "직사광선 피해 햇볕 잘 드는 곳에서 관리, 겉흙 마르면 물주기"),
 ("만병초", [2, 5, 3, 5, 5], "어려움", "자생식물", "베란다", "잎에 유독성분이 있음, 멸종위기종"),
 ("자금우", [4, 5, 4, 5, 2], "쉬움", "자생식물", "공부방", "직사광선, 고건조 피하기"),
 ("백량금", [5, 1, 4, 3, 2], "쉬움", "자생식물", "거실", "겉흙이 마르면 물 충분히 주기"),
 ("털머위", [4, 2, 3, 4, 5], "보통", "자생식물", "공부방", "잎에 직접 분무하지 않기, 생장 빠름, 자주 분무해야 함, 직사광선 피하기"),
 ("마삭줄", [4, 3, 2, 5, 5], "보통", "자생식물", "공부방", "햇빛 많이 주기"),
 ("아왜나무", [2, 2, 2, 1, 3], "쉬움", "자생식물", "", ""),
 ("팔손이", [3, 3, 4, 4, 4], "쉬움", "자생식물", "베란다, 거실", "약간 건조하게 관리"),
("돈나무", [1, 1, 4, 2, 5], "쉬움", "자생식물", "거실, 베란다", "겉흙 마르면 물 흠뻑 주기, 햇빛 많이 주기"),
("소나무", [4, 5, 5, 5, 3], "보통", "자생식물", "", ""),
("산호수", [1, 1, 4, 4, 3], "쉬움", "자생식물", "거실, 주방", "잎에 분무 자주해주기, 겉흙 마르면 물 주기, 직사광선 피하기"),
("넉줄고사리", [5, 1, 4, 3, 3], "쉬움", "자생식물(양치류)", "거실", "분무 자주해주기, 겉흙 마르면 물 주기"),
("봉의꼬리", [5, 1, 2, 3, 4], "보통", "자생식물(양치류)", "거실", "분무 자주해주기"),
("보스톤고사리", [5, 4, 2, 2, 4], "보통", "자생식물(양치류)", "거실", "건조할 때 자주 분무, 잎에 분무"),
("구아바", [5, 2, 2, 4, 4], "보통", "목본성 관엽식물", "", ""),
("관음죽", [5, 3, 2, 4, 4], "보통", "목본성 관엽식물", "화장실", "암모니아 제거효과 탁월, 자라는 속도 느려 관리에 용이, 물 많이 주기"),
("멕시코소철", [5, 1, 2, 4, 3], "쉬움", "목본성 관엽식물", "거실, 베란다", "수명이 길고 쉽게 구할 수 있음, 잎 잘 닦아주기, 잎에 털이 없음"),
("디지고데카", [5, 1, 2, 4, 2], "약간 어려움", "목본성 관엽식물", "거실", "분무 자주하기, 크기가 큼"),
("인도고무나무", [4, 4, 4, 4, 3], "쉬움", "목본성 관엽식물", "거실", "물 너무 많이 주지 않기"),
("아이비", [3, 4, 4, 4, 5], "쉬움", "목본성 관엽식물", "공부방", "거울철에 물 분무 자주 해주기"),
("드라세라 '마지나타'", [2, 3, 2, 3, 3], "보통", "목본성 관엽식물", "", ""),
("벵갈고무나무", [4, 1, 3, 5, 1], "보통", "목본성 관엽식물", "거실", "건조시 자주 분무, 습할 땐 환기"),
("벤자민고무나무", [2, 4, 4, 3, 3], "보통", "목본성 관엽식물", "현관", "토양 촉촉히 유지할 정도만 물 주기"),
("파키라", [1, 1, 4, 1, 2], "약간 어려움", "목본성 관엽식물", "거실", "직사광선 피하기"),
("호야", [1, 5, 3, 4, 2], "보통", "목본성 관엽식물", "거실", "분무해주기"),
("쉐프렐라 '홍콩'", [1, 1, 4, 4, 4], "보통", "목본성 관엽식물", "거실, 침실", "기르기 용이하나 관리 소홀시 해충 잘 생김"),
("드라세나 '맛상게아나'", [1, 4, 1, 3, 5], "쉬움", "목본성 관엽식물", "거실", "흙 촉촉하게 유지"),
("드라세나 '와네키'", [1, 3, 2, 3, 3], "보통", "목본성 관엽식물", "", ""),
("클로로피텀 (접란)", [5, 2, 4, 1, 4], "보통", "초본성 관엽식물", "거실, 주방", "공중걸이로 가장 적합, 흙 항상 촉촉히"),
("디펜바키아 '마리안느'", [5, 4, 2, 5, 1], "약간 어려움", "초본성 관엽식물", "거실", "흙 촉촉하게 유지, 분무 자주해주기, 식물에 독성 있음"),
("디펜바키아 '트로픽스노우'", [5, 4, 2, 5, 1], "약간 어려움", "초본성 관엽식물", "거실", "흙 촉촉하게 유지, 분무 자주해주기, 식물에 독성 있음"),
("틸란드시아 '시아네아'", [5, 5, 3, 4, 2], "약간 어려움", "초본성 관엽식물", "거실", "분무해서 건조하지 않게 관리"),
("틸란드시아 '이오난사'", [5, 5, 3, 4, 2], "약간 어려움", "초본성 관엽식물", "거실", "분무해서 건조하지 않게 관리"),
("수염 틸란드시아", [5, 5, 3, 4, 2], "약간 어려움", "초본성 관엽식물", "거실", "분무해서 건조하지 않게 관리"),
("안스리움", [5, 1, 5, 1, 4], "약간 어려움", "초본성 관엽식물", "화장실, 주방", "반양지, 암모니아 제거 좋음, 분무하지 않기"),
("싱고니움", [5, 1, 2, 3, 4], "약간 어려움", "초본성 관엽식물", "거실, 주방", "분무 자주해주기"),
("아글라오네마", [3, 2, 2, 4, 3], "보통", "초본성 관엽식물", "공부방", "빛이 잘 안드는 데서도 잘 자람, 분무 피하기"),
("필로드데론 '선라이트'", [3, 1, 3, 5, 3], "약간 어려움", "초본성 관엽식물", "거실 외 아무곳", "공기정화에 두드러지게 좋지는 않음"),
("필로드데론 '셀륨'", [3, 1, 3, 5, 3], "약간 어려움", "초본성 관엽식물", "거실 외 아무곳", "공기정화에 두드러지게 좋지는 않음"),
("필로드데론 '콩고'", [3, 1, 3, 5, 3], "약간 어려움", "초본성 관엽식물", "거실 외 아무곳", "공기정화에 두드러지게 좋지는 않음"),
("아레카야자", [2, 4, 2, 5, 5], "약간 어려움", "초본성 관엽식물", "거실", "흙 촉촉히 유지"),
("피닉스야자", [2, 5, 2, 3, 4], "쉬움", "초본성 관엽식물", "", ""),
("스킨답터스", [1, 3, 5, 5, 2], "보통", "초본성 관엽식물", "주방", "흙 마를 때 쯤 물 주기, 재배와 관리가 쉬움"),
("칼라데아", [1, 2, 2, 5, 1], "어려움", "초본성 관엽식물", "공부방", "가정에서 기르기 까다로움, 토양 촉촉히 관리, 분무 자주해주기"),
("산세베리아", [1, 2, 2, 2, 1], "쉬움", "초본성 관엽식물", "", ""),
("관엽베고니아", [2, 2, 2, 3, 5], "약간 어려움", "초본성 관엽식물", "거실", "햇빛 많이 받게 하고, 겉흙 마르면 흠뻑 물 주기"),
("꽃베고니아", [2, 2, 2, 3, 5], "약간 어려움", "초본성 관엽식물", "거실", "햇빛 많이 받게 하고, 겉흙 마르면 흠뻑 물 주기"),
("스파티필럼", [1, 4, 4, 4, 4], "보통", "초본성 관엽식물", "", "비교적 쉽게 기를 수 있음, 클리브렌디와 마우나로아가 인기종"),
("파토니아", [2, 5, 1, 5, 5], "쉬움", "초본성 관엽식물", "공부방", "직사광선 피하고, 자주 분무해주기"),
("페페로미아", [4, 1, 2, 2, 2], "쉬움", "초본성 관엽식물", "거실", "2~3일에 한번 분무, 잎이 다육질이라 과습에 약함, 크기가 작음"),
("장미허브", [4, 1, 3, 5, 5], "쉬움", "허브식물", "공부방", "습하면 안됨"),
("라벤더", [5, 4, 2, 4, 3], "어려움", "허브식물", "공부방", "겉흙이 마르면 흠뻑 물주기"),
("제라늄", [5, 5, 5, 5, 5], "쉬움", "허브식물", "베란다", "약간 건조한 것 좋아함"),
("로즈마리", [4, 5, 2, 5, 5], "쉬움", "허브식물", "거실", ""),
("애플민트", [4, 5, 2, 4, 4], "보통", "허브식물", "거실", "겉흙이 마르면 흠뻑 물주기"),
("페퍼민트", [3, 5, 5, 4, 4], "보통", "허브식물", "", ""),
("레몬버베나", [3, 5, 5, 4, 3], "쉬움", "허브식물", "거실, 베란다", "겉흙이 마르면 흠뻑 물주기, 과습 방지"),
("나도풍란", [5, 2, 2, 1, 3], "약간 어려움", "난식물", "침실, 거실", "건조하지 않게 자주 분무, 너무 습하지 않게 환기 잘 하기"),
("호접란", [3, 1, 3, 1, 1], "어려움", "난식물", "침실", "분무 자주해주기, 밤에 광합성함"),
("심비디움", [1, 1, 2, 3, 5], "약간 어려움", "난식물", "베란다, 창가", ""),
("꽃아카다", [3, 5, 3, 2, 1], "보통", "다육식뮬", "", ""),
("천대전금", [3, 1, 3, 1, 1], "보통", "다육식물", "", ""),
("연봉", [3, 5, 3, 1, 1], "보통", "다육식물", "", ""),
("벽어연", [3, 4, 3, 1, 1], "보통", "다육식물", "", ""),
("깃털이끼", [3, 5, 2, 5, 5], "쉬움", "이끼류", "", ""),
("비단이끼", [3, 5, 2, 5, 5], "쉬움", "이끼류", "", "")]

var livingRoomArray : NSMutableArray = []
var balconyArray : NSMutableArray = []
var studyRoomArray : NSMutableArray = []
var kitchenArray : NSMutableArray = []
var bedroomArray : NSMutableArray = []
var cellPlant : String = ""

var RoomArray : [NSMutableArray] = [balconyArray, livingRoomArray, studyRoomArray, kitchenArray, bedroomArray]

var isEmpty : [Bool] = [true, true, true, true, true]

class MyPlantsTableViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return RoomArray.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        var rows : Int = RoomArray[section].count
        
        if isEmpty[section] {
            rows = 1
        }

        return rows
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        var sectionTitle : String = ""
        
        if section == 0 {
            sectionTitle =  "베란다"
        }
        else if section == 1 {
            sectionTitle =  "거실"
        }
        else if section == 2 {
            sectionTitle =  "서재(공부방)"
        }
        else if section == 3 {
            sectionTitle =  "침실"
        }
        else if section == 4 {
            sectionTitle =  "부엌"
        }
        return sectionTitle
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Plants", for: indexPath) as! MyPlantsTableViewCell
        
        // Configure the cell...
        tableView.rowHeight = 80
        tableView.sectionFooterHeight = CGFloat(28)
        tableView.sectionHeaderHeight = CGFloat(28)
        
        if isEmpty[indexPath.section] {
            cell.cellPlantName.text = "식물을 추가하세요"
            cell.cellPlantImage.image = nil
        }
        else {
            cell.cellPlantName.text = (RoomArray[indexPath.section][indexPath.row] as! String)
            cell.cellPlantImage.image = UIImage(named: cell.cellPlantName.text!)
        }
        
        //cell.textLabel?.alignmentRect(forFrame: CGRect(x: 114, y: 12, width: 184, height: 55))
        
        return cell
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            
            // Delete the row from the data source
            if isEmpty[indexPath.section] {
                
            }
            else if RoomArray[indexPath.section].count == 1 {
                RoomArray[indexPath.section].removeObject(at: indexPath.row)
                isEmpty[indexPath.section] = true
                self.tableView.reloadData()
            }
            else {
                RoomArray[indexPath.section].removeObject(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }
            /*RoomArray[indexPath.section].removeObject(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }*/
        else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if self.tableView.indexPathForSelectedRow != nil {
            
            if isEmpty[self.tableView.indexPathForSelectedRow!.section] {
                cellPlant = ""
            }
            else {
                cellPlant = RoomArray[self.tableView.indexPathForSelectedRow!.section][self.tableView.indexPathForSelectedRow!.row] as! String
            }
        }
    }

}

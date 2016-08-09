//
// ViewController.swlft
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    //表示データ
    let dataList = [[1, "3A", "野球部"],
                    [2, "2B", "サッカー部"],
                    [3, "6C", "テニス部"]]

    //最初からあるメソッド
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    //データを返すメソッド
    func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        
        //セルを取得する。
        let cell = tableView.dequeueReusableCellWithIdentifier("TestCell", forIndexPath:indexPath) as UITableViewCell
        
        //セルのラベルに部名、部室を設定する。
        cell.textLabel?.text = dataList[indexPath.row][2] as? String
        cell.detailTextLabel?.text = "部室：" + String(dataList[indexPath.row][1])

        return cell
    }
    
    
    //データの個数を返すメソッド
    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        return dataList.count
    }
}
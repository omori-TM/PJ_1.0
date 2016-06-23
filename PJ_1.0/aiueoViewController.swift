//
//  aiueoViewController.swift
//  PJ_1.0
//
//  Created by 森尻尭之 on 2016/06/23.
//  Copyright © 2016年 森尻尭之. All rights reserved.
//

import UIKit

class aiueoViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var aiueoCollection: UICollectionView!
    
    var working_car_String = ["あ","い","う","え","お","か","き","く","け","こ","さ","し","す","せ","そ","た","ち","つ","て","と","な","に","ぬ","ね","の"]
    var selectedIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //グルーピングの数 セクション
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //表示個数の設定
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return working_car_String.count
    }
    
    //セルの表示
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell:iconCustomCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! iconCustomCell
        
        cell.title.text = "タイトル\(indexPath.row)"
        cell.image.image = UIImage(named:working_car_String[indexPath.row])
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
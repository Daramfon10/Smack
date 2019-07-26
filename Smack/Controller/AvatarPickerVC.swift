//
//  AvatarPickerVC.swift
//  Smack
//
//  Created by Daramfon Akpan on 7/26/19.
//  Copyright © 2019 Daramfon Akpan. All rights reserved.
//

import UIKit

class AvatarPickerVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var avatarType = AvatarType.dark
    var defaults = UserDefaults.standard
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        //my code to save the value of the selected index so if you quit the window and come back it still stays
//        if let segmentedcontrol  = defaults.value(forKey: "value") {
//            segmentControl.selectedSegmentIndex = segmentedcontrol as! Int
//            if segmentControl.selectedSegmentIndex == 0 {
//                avatarType = .dark
//                defaults.setValue(0, forKey: "value")
//
//            }else{
//                avatarType = .light
//                defaults.setValue(1, forKey: "value")
//            }
//        }
        
    }
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func segmentControlChanged(_ sender: Any) {
        if segmentControl.selectedSegmentIndex == 0 {
            avatarType = .dark
            //refer to line 24
//            defaults.setValue(0, forKey: "value")

        }else{
            avatarType = .light
            //refer to line 24
//            defaults.setValue(1, forKey: "value")
        }
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "avatarCell", for: indexPath) as? AvatarCell{
            cell.updateViews(index: indexPath.item, type: avatarType)
            
            return cell
            
        }
        else{
            return AvatarCell()
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var numOfColumns: CGFloat = 3
        if UIScreen.main.bounds.width > 320{
            numOfColumns = 4
        }
        
        let spaceBetweenCells: CGFloat = 10
        let padding: CGFloat = 40
        let cellDimension = ((collectionView.bounds.width-padding)-(numOfColumns-1)*spaceBetweenCells)/numOfColumns
        return CGSize(width: cellDimension, height: cellDimension)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if avatarType == .dark{
            UserDataService.instance.setAvatarName(avatarName: "dark\(indexPath.item)")
        }else{
             UserDataService.instance.setAvatarName(avatarName: "light\(indexPath.item)")
        }
        self.dismiss(animated: true, completion: nil)
    }

}

//
//  ViewController.swift
//  BTNavigationDropdownMenu
//
//  Created by Pham Ba Tho on 6/8/15.
//  Copyright (c) 2015 PHAM BA THO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectedCellLabel: UILabel!
    var menuView: BTNavigationDropdownMenu!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let items = ["Most Popular", "Latest", "Trending", "Nearest", "Top Picks"]
        //self.selectedCellLabel.text = items.first
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.0/255.0, green:180/255.0, blue:220/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        menuView = BTNavigationDropdownMenu(navigationController: self.navigationController, containerView: self.navigationController!.view, title: "Dropdown Menu", items: items as [AnyObject])
        menuView.cellHeight = 50
        
        menuView.setMenuTitle("Heyy!")

        menuView.cellBackgroundColor = .white
        menuView.cellSeparatorColor = .black
        menuView.cellSelectionColor = UIColor.lightGray
        menuView.shouldKeepSelectedCellColor = true
        menuView.cellTextLabelColor = .black
        menuView.cellTextLabelFont = UIFont(name: "SFUIText-Regular", size: 17)
        menuView.cellTextLabelAlignment = .left // .Center // .Right // .Left
        menuView.arrowPadding = 15
        menuView.animationDuration = 0.3
        menuView.maskBackgroundColor = UIColor.black
        menuView.maskBackgroundOpacity = 0.3
        menuView.didSelectItemAtIndexHandler = {(indexPath: Int) -> () in
            print("Did select item at index: \(indexPath)")
            //  self.selectedCellLabel.text = items[indexPath]
            //            self.menuView.setMenuTitle("Heyy!")
            
        }
        
        self.navigationItem.titleView = menuView
    }
}


//
//  MenuTViewController.swift
//  AFProduction
//
//  Created by Admin on 14.05.17.
//  Copyright © 2017 ASCompany. All rights reserved.
//

import UIKit

class MenuTViewController: UITableViewController
{
    var menuItems = [MenuItem(title: "Расчет стоимости", imageName: "costImage"),
                     MenuItem(title: "Мои проекты", imageName: "projectsImage"),
                     MenuItem(title: "Моя скидка", imageName: "lowImage"),
                     MenuItem(title: "База знаний", imageName: "infoImage"),
                     MenuItem(title: "Обратный звонок", imageName: "callImage"),
                     MenuItem(title: "Вызов тех. специалиста", imageName: "techImage"),
                     MenuItem(title: "Наши проекты", imageName: "ourProjectsImage"),
                     MenuItem(title: "Контакты", imageName: "contactsImage"),
                     MenuItem(title: "Авторизация", imageName: "authImage")]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "MenuTableViewCell", bundle: nil), forCellReuseIdentifier: "MenuTableViewCell")
        

        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        self.view.backgroundColor = UIColor.clear
        self.navigationItem.setHidesBackButton(true, animated:true);
        self.navigationItem.addLogoAtLeftButton()
        self.navigationItem.addSettingButtonOnRight()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menuItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as! MenuTableViewCell
        let menuItem = menuItems[indexPath.row]
        cell.setup(item: menuItem)
        return cell
        // Configure the cell...
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}

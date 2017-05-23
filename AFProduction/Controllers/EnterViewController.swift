//
//  EnterViewController.swift
//  AFProduction
//
//  Created by Admin on 19.05.17.
//  Copyright © 2017 ASCompany. All rights reserved.
//

import UIKit

class EnterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var tfRegion: UITextField!
    @IBOutlet weak var tfCity: UITextField!

    @IBOutlet weak var btnContinue: UIButton!
    
    var regionPicker: UIPickerView!
    var cityPicker: UIPickerView!
    
    var regionPickerValues = [0: "Кемеровская область", 1: "Московская область", 2: "Новосибирская область"]
    var kemReg = ["Кемерово","Новокузнецк"]
    var mskReg = ["Москва","Мытищи"]
    var nskReg = ["Новосибирск","Бердск"]

    var cityPickerValues: [String] = []
    var cities: [[String]] = []
    
    @IBAction func onClickContinue(_ sender: Any)
    {
        let menuVC = MenuTViewController();
        self.navigationController?.pushViewController(menuVC, animated: true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        if (pickerView.tag == 1) {
            return regionPickerValues.count
        }
        else {
            return cityPickerValues.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if (pickerView.tag == 1) {
            return regionPickerValues[row]
        }
        else {
            return cityPickerValues[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if (pickerView.tag == 1) {
            tfRegion.text = regionPickerValues[row]
            updateCityPicker(row: row);
        }
        else {
            tfCity.text = cityPickerValues[row]
            print(cityPickerValues[row])
        }
        self.view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true;
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Show the navigation bar on other view controllers
        self.navigationController?.isNavigationBarHidden = false;
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cities = [kemReg, mskReg, nskReg]
        
        regionPicker = UIPickerView()
        cityPicker = UIPickerView()
        
        regionPicker.dataSource = self
        regionPicker.delegate = self
        
        cityPicker.dataSource = self
        cityPicker.delegate = self
        
        regionPicker.tag = 1;
        cityPicker.tag = 2;
        
        tfRegion.inputView = regionPicker
        tfRegion.text = regionPickerValues[0]
        let selectRow = regionPicker.selectedRow(inComponent: 0)
        updateCityPicker(row: selectRow)
    }

    func updateCityPicker(row: Int)
    {
        var c = cities[row]
        cityPickerValues = c
        tfCity.inputView = cityPicker
        tfCity.text = c[0]
        cityPicker.selectRow(0, inComponent: 0, animated: false)
        cityPicker.reloadComponent(0)
    }
    
}



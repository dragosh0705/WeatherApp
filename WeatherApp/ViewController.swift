//
//  ViewController.swift
//  WeatherApp
//
//  Created by 최영우 on 6/7/23.
//

import UIKit

class ViewController: UIViewController {
    
    private var cityNameTextField : UITextField =  {
        var cityName = UITextField()
        cityName.layer.borderWidth = 1
        cityName.translatesAutoresizingMaskIntoConstraints = false
        
        return cityName
    }()
    
    private var cityNameLabel: UILabel = {
        var cityLabel = UILabel()
        cityLabel.textColor = .black
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return cityLabel
    }()
    
    private var weatherDescriptionLabel : UILabel = {
        var weatherLabel = UILabel()
        weatherLabel.textColor = .black
        weatherLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return weatherLabel
    }()
    
    private var tempLabel : UILabel = {
        var tempLabel = UILabel()
        tempLabel.textColor = .black
        tempLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return tempLabel
    }()
    
    private var maxTempLabel : UILabel = {
        var maxLabel = UILabel()
        maxLabel.textColor = .red
        maxLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return maxLabel
    }()
    
    private var minTempLabel : UILabel = {
        var minLabel = UILabel()
        minLabel.textColor = .blue
        minLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return minLabel
    }()
    
    private var tapFetchWeatherButton : UIButton = {
        var button = UIButton()
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.setTitle("날씨 가져오기", for: .normal)
        
        //button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(cityNameTextField)
        self.view.addSubview(tapFetchWeatherButton)
        
        NSLayoutConstraint.activate([
            self.cityNameTextField.heightAnchor.constraint(equalToConstant: 40),
            self.cityNameTextField.widthAnchor.constraint(equalToConstant: 300),
            self.cityNameTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.cityNameTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
        ])
        
        NSLayoutConstraint.activate ([
            self.tapFetchWeatherButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.tapFetchWeatherButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150),
        ])
    }


}


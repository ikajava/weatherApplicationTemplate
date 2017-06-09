//
//  ViewController.swift
//  scrollView
//
//  Created by Ika Javakhishvili on 05/1/17.
//  Copyright © 2017 Ika Javakhishvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let currentWeatherView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let collectionViewParentView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let tableViewView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let pageControlView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.cyan
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        let selfHeight = self.view.frame.height
        
        self.view.backgroundColor = UIColor.darkGray
        
        self.view.addSubview(backgroundView)
        backgroundView.addSubview(currentWeatherView)
        backgroundView.addSubview(collectionViewParentView)
        backgroundView.addSubview(tableViewView)
        backgroundView.addSubview(pageControlView)

        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backgroundView]))
        
        backgroundView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": currentWeatherView]))
        backgroundView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": collectionViewParentView]))
        backgroundView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": tableViewView]))
        backgroundView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": pageControlView]))
      
         backgroundView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(cWV)][v1(cVPV)][v2][v3(pCV)]|", options: NSLayoutFormatOptions(), metrics: ["cWV": selfHeight/3, "cVPV":selfHeight*0.18, "pCV":30], views: ["v0": currentWeatherView, "v1": collectionViewParentView, "v2": tableViewView, "v3":pageControlView]))
        
        //backgroundView.topAnchor.constraint(equalTo: tableViewView.bottomAnchor, constant: 100).isActive = true
        
        
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backgroundView]))
        
        super.viewDidLoad()
        
    }



}


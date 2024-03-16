//
//  Settings_View.swift
//  MyNote_App
//
//  Created by A LINA on 15/3/24.
//

import UIKit

protocol Settings_ViewProtocol {
    
    func successSets(settings: [Setting])
}

class SettingsView: UIViewController {
    
    private var settings: [Setting] = []
    private var controller: SettingsControllerProtocol?
    
    
    private let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        controller = Settings_Controller(view: self)
        
        view.backgroundColor = .systemBackground
        setupNavItem()
        setUpUI()
        controller?.onGetSettings()
    }
    
    private func setupNavItem() {
        navigationItem.title = "Settings"
        let backBtn = UIBarButtonItem(image: UIImage(systemName: "chevron.left"), style: .plain, target: self, action: #selector(backBtnTapped))
        backBtn.tintColor = .black
        navigationItem.leftBarButtonItem = backBtn
        
        let settingsBarBtnItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(settingsBtnTapped))
        settingsBarBtnItem.tintColor = .black
        navigationItem.rightBarButtonItem = settingsBarBtnItem
    }
    
    
    private func setUpUI() {
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(Settings_Cell.self, forCellReuseIdentifier: "cell")
    }
    
    @objc func settingsBtnTapped() {
        
    }
    
    @objc func backBtnTapped() {
        navigationController?.popViewController(animated: true)
    }
    
}





extension SettingsView: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Settings_Cell
        cell.setUp(settings: settings[indexPath.row])
        return cell
    }
}

extension SettingsView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

extension SettingsView: Settings_ViewProtocol{
    
    func successSets(settings: [Setting]){
        
        self.settings = settings
        
        tableView.reloadData()
    }
    
}

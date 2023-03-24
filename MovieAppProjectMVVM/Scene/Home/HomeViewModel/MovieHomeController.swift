//
//  MovieHomeController.swift
//  MovieAppProjectMVVM
//
//  Created by Kübra Demirkaya on 24.03.2023.
//

import UIKit
// Elementleri programatik olarak oluşturmak için SnapKit kullanılıyor.
import SnapKit

// Final: Override edilemez.
//Bu şekilde tanımlamak daha iyi performans sağlar. Eğer override edilecek ya da kalıtım alınacaksa final kaldırılabilir.
final class MovieHomeController: UIViewController {
    
    // MARK: - UI Elements
    
    // Table View oluşturuluyor
    private let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    // MARK: - Properties
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        makeTableView()
    }
    
    // MARK: - Functions
    
    private func configure() {
        drawDesign()
        addElementSubViews()
    }
    
    private func drawDesign() {
        tableView.delegate = self
        tableView.dataSource = self
        //MovieHomeCell'deki identifier buraya getiriliyor
        tableView.register(MovieHomeCell.self, forCellReuseIdentifier: MovieHomeCell.Identifier.custom.rawValue)
    }
    
    private func addElementSubViews() {
        view.addSubview(tableView)
    }
    
}

// MARK: - TableView Extension

// Table Viewın xorunlu fonksiyonları extension olarak tanımlanıyor
extension MovieHomeController: ConfigureTableView {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: MovieHomeCell = tableView.dequeueReusableCell(withIdentifier: MovieHomeCell.Identifier.custom.rawValue) as? MovieHomeCell
        else {
            return UITableViewCell()
        }
        return cell
    }
    
}

extension MovieHomeController {
    private func makeTableView() {
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

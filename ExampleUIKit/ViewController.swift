//
//  ViewController.swift
//  ExampleUIKit
//
//  Created by Mario Chiodi on 22/05/24.
//

import UIKit

class ViewController: UIViewController {

    private lazy var myView: View = {
        let view = View()
        view.delegate = self
        return view
    }()

    override func loadView() {
        super.loadView()

        self.view = myView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Configuramos a View usando o método setup
        myView.setup(labelText: "Olá, mundo!", buttonTitle: "Testar")

    }
}

extension ViewController: ViewDelegate {
    func didTapButton() {
       myView.setup(labelText: "Sucesso!", buttonTitle: "Testar novamente")
    }
}

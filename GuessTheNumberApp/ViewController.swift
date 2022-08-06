//
//  ViewController.swift
//  GuessTheNumberApp
//
//  Created by Felipe Augusto Correia on 06/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    func makeAlert(message: String, title: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func okButtonClicked(_ sender: Any) {
        
        let randomNumber = Int.random(in: 1...10)
        
        if numberTextField.text == "" {
            makeAlert(message: "Digite um número!", title: "Erro!")
            print(randomNumber)
        } else {
            if randomNumber == Int(numberTextField.text!)! {
                print(randomNumber)
                makeAlert(message: "Parabens, voce acertou!", title: "Oba!")
            } else {
                if Int(numberTextField.text!)! > 10 {
                    makeAlert(message: "Digite um numero entre 1 e 10", title: "Erro!")
                } else {
                    print(randomNumber)
                    makeAlert(message: "Mais sorte na próxima!", title: "Tente novamente.")
                }
            }
        }
    }
}


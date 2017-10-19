//
//  ViewController.swift
//  IMC
//
//  Created Daniel Mora
//  Copyright © 2017. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var altura: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func CalcularIMC(peso:Float,altura:Float)-> Float{
        var result:Float
        result=(peso/pow(altura,2))
        return result
    }

    @IBAction func buttonClick(_ sender: UIButton) {
        let vAltura:Float=Float(peso.text!)!
        let vPeso:Float=Float(altura.text!)!
        let rst:Float=CalcularIMC(peso: vAltura, altura: vPeso)
        if rst>25 {
            label.text = String("Muy Mal! Estas en  Sobrepeso")
        }else if rst>18.5 && rst<25{
            label.text = String("Bien! Tienes un Peso Adecuado")
        }
        else if rst<=18.5{
            label.text = String("Desnutrido, Alimentate mejor")
        }
        else{
            label.text = String("Sin datos")
        }
        
    }
}


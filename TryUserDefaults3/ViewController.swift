//
//  ViewController.swift
//  TryUserDefaults3
//
//  Created by Fumitaka Imamura on 2021/11/11.
//

import UIKit

class ViewController: UIViewController {

    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        let answers = [Answer(text: "Answer 1", isCorrect: true),
                       Answer(text: "Answer2", isCorrect: false)]

        let encoder = PropertyListEncoder()
        do {
            let data = try encoder.encode(answers)
            defaults.set(data, forKey: "Key1")
        } catch {
            print("Error encoding \(error)")
        }
    }

    @IBAction func buttonPressed(_ sender: Any) {
        if let data = defaults.data(forKey: "Key1") {
            let decoder = PropertyListDecoder()
            do {
                let answers = try decoder.decode([Answer].self, from: data)
                for answer in answers {
                    print(answer.text)
                    print(answer.isCorrect)
                }
            } catch {
                print("Error decoding \(error)")
            }
        }
    }
}


import UIKit
import PlaygroundSupport
import Constrain

class ViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black

        let label = UILabel()
        label.backgroundColor = .red
        label.text = "Hello World!"
        label.textColor = .black
        label.font = .systemFont(ofSize: 48, weight: .black)
        label.layer.cornerRadius = 8
        label.clipsToBounds = true

        // Constrain label

        view.addSubview(label)
        useAutoLayout(label)
        constrainEdges(of: label, to: view, UIEdgeInsets(top: 256, left: 16, bottom: -256, right: -16))

        // Or, in functionnal style (using pointfreeco/swift-prelude):
        //
        // label
        //     |> view.addSubview
        //     <> useAutoLayout
        //     <> constrainEdges(to: view, UIEdgeInsets(top: 256, left: 16, bottom: -256, right: -16))
        //
    }
}

PlaygroundPage.current.liveView = ViewController()

print("✅")

import UIKit
import Then
import FlexLayout
import PinLayout

class FlexGrowViewController: UIViewController {
    
    let rootFlexContainer = UIView()
    var label1 = UILabel().then {
        $0.text = "Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1"
    }
    var label2 = UILabel().then {
        $0.text = "Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        view.addSubview(rootFlexContainer)
        
        self.rootFlexContainer.flex.define { flex in
            flex.addItem(label1).grow(1)
            flex.addItem(label2).grow(1)
        }
        
        self.rootFlexContainer.pin.all()
        self.rootFlexContainer.flex.layout()
    }
}


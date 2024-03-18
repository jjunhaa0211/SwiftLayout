import UIKit
import Then
import FlexLayout
import PinLayout

class FlexPaddingHorizontalViewController: UIViewController {
    
    let rootFlexContainer = UIView()
    var label1 = UILabel().then {
        $0.text = "Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1Label1"
    }
    var label2 = UILabel().then {
        $0.text = "Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2Label2"
    }
    var label3 = UILabel().then {
        $0.text = "Label3Label3Label3Label3Label3Label3Label3Label3Label3Label3Label3Label3Label3Label3Label3Label3Label3Label3Label3"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        view.addSubview(rootFlexContainer)
        
        // top, bottom에만 넣음
        self.rootFlexContainer.flex.paddingVertical(30).define { flex in
            flex.addItem(label1)
            flex.addItem(label2)
            flex.addItem(label3)
        }
        
        self.rootFlexContainer.pin.all()
        self.rootFlexContainer.flex.layout()
    }
}

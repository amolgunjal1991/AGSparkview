//
//  AGSparkview.swift
//  AGSparkview
//
//  Created by Amol Gunjal on 18/08/21.
//
import Foundation

open class AGSparkview : UIView {
    
    //MARK:- Variables
    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple, .cyan, .magenta]
    var colorCounter = 0
    
    //MARK:- Lifecycle methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        scheduleColorChange()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK:- Change the backgroundcolor with timee after some interval of time to blink.
    func scheduleColorChange() {
        if #available(iOS 10.0, *) {
            let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0,
                                                             repeats: true) { (timer) in  //1
                UIView.animate(withDuration: 2.0) {  //2
                    self.layer.backgroundColor = self.colors[self.colorCounter % 8].cgColor  //3
                    self.colorCounter += 1  //4
                }
            }
            scheduledColorChanged.fire()  //5
        } else {
            // Fallback on earlier versions
        }
    }
}

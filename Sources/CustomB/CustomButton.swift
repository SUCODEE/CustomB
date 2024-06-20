 
import SwiftUI

public struct CustomButton: View {
    var title:String
    var colorname:Color
    var action:() -> Void
  public  init(title: String, color: Color, action: @escaping () -> Void) {
        self.title = title
        self.colorname = color
        self.action = action
    }
  
    public var body: some View {
        Text(title).bold()
            .foregroundStyle(.white)
            .frame(width: 200, height: 55)
            .background(colorname,in: .rect(cornerRadius: 20))
            .onTapGesture {
                action()
            }
    }
}
 

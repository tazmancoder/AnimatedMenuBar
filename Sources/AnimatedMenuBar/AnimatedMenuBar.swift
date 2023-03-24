import SwiftUI

@available(iOS 16, macOS 13.0, *)
public struct AnimatedMenuBar: View {
    // MARK: - Namespace
    @Namespace private var menuItemTransition
    
    // MARK: - Bindings
    @Binding var selectedIndex: Int
    
    // MARK: - Properties
    var menuItems = ["Travel", "Nature", "Architecture"]
    
    public init(selectedIndex: Binding<Int>, menuItems: [String] = ["Travel", "Nature", "Architecture"]) {
        self._selectedIndex = selectedIndex
        self.menuItems = menuItems
    }
    
    public var body: some View {
        HStack {
            Spacer()
            
            ForEach(menuItems.indices, id: \.self) { index in
                if index == selectedIndex {
                    Text(menuItems[index])
                        .padding(.horizontal)
                        .padding(.vertical, 4)
                        .background(Capsule().foregroundColor(.purple))
                        .foregroundColor(.white)
                        .matchedGeometryEffect(id: "menuItem", in: menuItemTransition)
                } else {
                    Text(menuItems[index])
                        .padding(.horizontal)
                        .padding(.vertical, 4)
                        .background(Capsule().foregroundColor(.gray.opacity(0.2)))
                        .onTapGesture {
                            selectedIndex = index
                        }
                }
                
                Spacer()
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .animation(.easeInOut, value: selectedIndex)
    }
}

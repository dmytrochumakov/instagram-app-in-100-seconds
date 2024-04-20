import Inject
import SwiftUI

public struct ContentView: View {
    @ObserveInjection var inject

    public init() {}

    public var body: some View {
        VStack {
            Text("Testing")
                .padding()
                .background(Color.red)
                .border(.blue)
        }
        .enableInjection()
    }
}

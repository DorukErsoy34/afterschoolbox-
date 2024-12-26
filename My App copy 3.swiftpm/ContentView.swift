import SwiftUI

struct ContentView: View {

    @State private var num1 = 1
    @State private var num2 = 7
    @State private var num3 = 3
    @State private var num4 = 5
    @State private var num5 = 2
    @State private var num6 = 6
    @State private var num7 = 8
    @State private var num8 = 9
    @State private var doublenum = 0 
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 300, height: 700)
                .foregroundColor(.gray)
            
            VStack(spacing: 20) {
                HStack(spacing: 10) {
                    RectangleWithText(number: num1, color: .blue)
                    RectangleWithText(number: num2, color: .green)
                }
                
                HStack(spacing: 10) {
                    RectangleWithText(number: num3, color: .red)
                    RectangleWithText(number: num4, color: .yellow)
                }
                
                HStack(spacing: 10) {
                    RectangleWithText(number: num5, color: .orange)
                    RectangleWithText(number: num6, color: .purple)
                }
                
                HStack(spacing: 10) {
                    RectangleWithText(number: num7, color: .pink)
                    RectangleWithText(number: num8, color: .black)
                }
                
                Button("Double") {
                    num1 *= 2
                    num2 *= 2
                    num3 *= 2
                    num4 *= 2
                    num5 *= 2
                    num6 *= 2
                    num7 *= 2
                    num8 *= 2
                    doublenum += 1
                    print("Values doubled \(doublenum) times!")
                }
                .padding()
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                
                Text("Double: \(doublenum)")
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding()
        }
    }
}


struct RectangleWithText: View {
    let number: Int
    let color: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(color)
            Text("\(number)") 
                .foregroundColor(.white)
                .font(.headline)
        }
    }
}

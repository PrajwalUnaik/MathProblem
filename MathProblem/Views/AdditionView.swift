//
//  GameView.swift
//  MathProblem
//
//  Created by Prajwal U on 13/01/24.
//

import SwiftUI


struct AdditionView: View {
    @State private var correctAnswer = 0
    @State private var choiceArray: [Int] = [0, 1, 2, 3]
    @State private var firstNumber = 0
    @State private var secondNumber = 0
    @State private var difficulty = 100
    @State private var score = 0

    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color.white, location: 0), Gradient.Stop(color: Color.mint, location: 1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            
            VStack {
                Spacer()

                VStack {
                    
                    Text("Quick Math Challenge")
                    Image(systemName: "plus.square")
                        
                }.font(.title)
                    .fontWeight(.bold)
                    .fontDesign(.monospaced)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .opacity(0.5)
                    )
                    .frame(width: 350)
                .shadow(radius: 10)


                Text("\(firstNumber) +  \(secondNumber)")
                    .font(.system(size: 45))
                    .bold()
                    .padding(.vertical, 30)
                    .shadow(radius: 5)

                HStack {
                    ForEach(0..<2) { index in
                        Button {
                            answerIsCorrect(answer: choiceArray[index])
                            generateAnswer()
                        } label: {
                            AnswerButton(number: choiceArray[index])
                                .background(Color.white)
                                .foregroundColor(.black)
                                .clipShape(Circle())
                                .shadow(radius: 5)
                        }
                    }
                }

                HStack {
                    ForEach(2..<4) { index in
                        Button {
                            answerIsCorrect(answer: choiceArray[index])
                            generateAnswer()
                        } label: {
                            AnswerButton(number: choiceArray[index])
                                .background(Color.white)
                                .foregroundColor(.black)
                                .clipShape(Circle())
                                .shadow(radius: 5)
                        }
                    }
                }

                Text("Score : \(score)")
                    .fontDesign(.monospaced)
                    .font(.headline)
                    .bold()
                    .padding(.vertical, 30)
                    .shadow(radius: 10)

                Spacer()
            }
            .onAppear {
                generateAnswer()
        }
        }
    }

    func answerIsCorrect(answer: Int) {
        let isCorrect = answer == correctAnswer ? true : false

        if isCorrect {
            self.score += 1
        } else {
            self.score -= 1
        }
    }

    func generateAnswer() {
        firstNumber = Int.random(in: 0...(difficulty / 2))
        secondNumber = Int.random(in: 0...(difficulty / 2))

        var answerList = [Int]()

        correctAnswer = firstNumber + secondNumber

        for _ in 0...2 {
            answerList.append(Int.random(in: 0...(difficulty)))
        }

        answerList.append(correctAnswer)
        choiceArray = answerList.shuffled()
    }
}

#Preview {
    AdditionView()
}

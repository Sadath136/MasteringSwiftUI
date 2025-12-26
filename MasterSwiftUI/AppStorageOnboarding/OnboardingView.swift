//
//  OnboardingView.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 22/12/25.
//

import SwiftUI

struct OnboardingView: View {
    @State var screenState: ScreenState = .firstScreen
    @State var isFirstScreen: Bool = true
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var phoneNumber: String = ""
    @AppStorage(UserDefaultKeys.appContainer) var appContainer: Data?
    @AppStorage(UserDefaultKeys.isSignedin) var isSignedIn: Bool?
    
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea().opacity(0.7)
            if isSignedIn ?? false {
                DashBoardScreen()
            } else {
                VStack {
                    Spacer()
                    viewPresenter()
                    Spacer()
                    Spacer()
                    Button(screenState.nextButtonText) {
                        switchScreen()
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(Color.white)
                    .clipShape(Capsule())
                    .padding()
                    .tint(Color.purple)
                    .font(.headline)
                    .fontWeight(.bold)
                }
            }
        }
    }
    
    private func switchScreen() {
        if screenState == .thirdScreen {
            isSignedIn = true
            DataManager.shared.saveData(AppStorageContainer(firstName: firstName, secName: lastName, email: email, number: phoneNumber))
        }
        if screenState == .firstScreen {
            screenState = .secScreen
        } else if screenState == .secScreen {
            screenState = .thirdScreen
        }
    }
    
    @ViewBuilder
    private func viewPresenter() -> some View {
        switch screenState {
        case .firstScreen:
            firstScreen
        case .secScreen:
            secScreen
        case .thirdScreen:
            thirdScreen
        }
    }
}

enum ScreenState: String {
    case firstScreen
    case secScreen
    case thirdScreen
    
    var nextButtonText: String {
        switch self {
        case .firstScreen,.secScreen:
            return "Next"
        case .thirdScreen:
            return "Finish"
        }
    }
}

//MARK: - OnBoarding Components

extension OnboardingView {
    private var firstScreen: some View {
        ZStack {
            VStack(spacing: 30) {
                withAnimation(Animation.linear(duration: 1.0)) {
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(isFirstScreen ? 45 : 0))
                }
                Text("Welcome to New App how is the Design?")
                    .fontWeight(.bold)
                    .font(.system(size: 24, weight: .bold, design: .default))
                    .multilineTextAlignment(.center)
            }
            .foregroundStyle(.white)
            .padding(.all,30)
            
            
        }
    }
    
    private var secScreen: some View {
        ZStack {
            Text("Please fill Details in Next Screen")
                .fontWeight(.bold)
                .font(.system(size: 24, weight: .bold, design: .default))
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
        }
    }
    
    private var thirdScreen: some View {
        ZStack {
            VStack(spacing: 20) {
                OnboardingTextFeild(placeHolder: "Enter First Name", bindingProperty: $firstName)
                OnboardingTextFeild(placeHolder: "Enter Last Name", bindingProperty: $lastName)
                OnboardingTextFeild(placeHolder: "Enter Email", bindingProperty: $email)
                OnboardingTextFeild(placeHolder: "Enter Phone number", bindingProperty: $phoneNumber)
            }
            .padding()
        }
    }
}

struct OnboardingTextFeild: View {
    var placeHolder: String
    @Binding var bindingProperty: String
    
    var body: some View {
        TextField(placeHolder, text: $bindingProperty)
            .frame(height: 30.0)
            .padding()
            .background(content: {
                RoundedRectangle(cornerRadius: 20.0)
                    .fill(Color.white)
            })
            .shadow(radius: 5)
            
    }
}


#Preview {
    OnboardingView()
}

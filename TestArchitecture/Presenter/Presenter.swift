//
//  Presenter.swift
//  TestArchitecture
//
//  Created by Luis Goyes on 9/7/18.
//  Copyright © 2018 Luis Goyes. All rights reserved.
//

import Foundation

protocol BaseView : class {}
protocol BasePresenter {
    associatedtype View
    var view: View? { get set }
    func bind(view: View)
    func unBind()
}


class BasePresenterImpl : BasePresenter {
    var view: BaseView?
    
    func bind(view: BaseView) {
        self.view = view
    }
    func unBind() {
        self.view = nil
    }
}

protocol LoginView : BaseView {
    
}

class LoginViewImplementation : LoginView {
    
}

protocol LoginPresenterProtocol {
}

class LoginPresenter : BasePresenterImpl, LoginPresenterProtocol {
    
    override init() {
        super.init()
        view = LoginViewImplementation()
    }
    
    func bind(view: LoginView) {
        super.bind(view: view)
    }
    
    override func unBind() {

    }
}

class X {
    var login : LoginPresenterProtocol = LoginPresenter()
}

//
//  Presenter.swift
//  TestArchitecture
//
//  Created by Luis Goyes on 9/7/18.
//  Copyright © 2018 Luis Goyes. All rights reserved.
//

import Foundation
import Swinject

protocol BaseViewProtocol {}
protocol BasePresenterProtocol {
    associatedtype View
    var view: View? { get set }
    func bind(view: View)
    func unBind()
}


class BasePresenter : BasePresenterProtocol {
    var view: BaseViewProtocol?
    
    func bind(view: BaseViewProtocol) {
        self.view = view
    }
    func unBind() {
        self.view = nil
    }
}

// MARK - Login MVP

protocol LoginViewProtocol : BaseViewProtocol {
    
}

class LoginView : LoginViewProtocol {
    
}

protocol LoginPresenterProtocol {
    func saludar()
}

class LoginPresenter : BasePresenter, LoginPresenterProtocol {
    
    var p = "Hola"
    
    override init() {
        super.init()
        view = LoginView()
    }
    
    func bind(view: LoginView) {
        super.bind(view: view)
    }
    
    override func unBind() {

    }
    
    func saludar() {
        print( p )
    }
}

class Test {
    
    var mPresenter : LoginPresenterProtocol = LoginPresenter()
    var mView : LoginViewProtocol = LoginView()
    
    init() {
        mPresenter.saludar()
    }
    
}






class Provider {
    let container = Container()
    lazy var p =  LoginPresenter()

    init() {
        p.p = "LUGO"
        container.register(LoginPresenterProtocol.self) { _ in
           self.p
        }
    }
}

class X {

   private let  login : LoginPresenterProtocol
    
    init(login: LoginPresenterProtocol) {
        self.login = login
        login.saludar()
    }
}

class P {
    init() {
        var provider = Provider()
        let x = X(login: provider.container.resolve(LoginPresenterProtocol.self) ?? LoginPresenter())
    }
}

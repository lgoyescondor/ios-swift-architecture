//
//  PrintDataInteractor.swift
//  TestArchitecture
//
//  Created by Luis Goyes on 9/6/18.
//  Copyright © 2018 Luis Goyes. All rights reserved.
//

import Foundation
import RxSwift

class ObservableUseCase : BaseInteractor {
    typealias Response = Int
    typealias Params = String
    func buildUseCase(params: String) -> Observable<Int> {
        return Observable.
    }
}

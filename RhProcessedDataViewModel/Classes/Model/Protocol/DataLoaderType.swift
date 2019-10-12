//
//  DataLoaderType.swift
//  RacingImageViewer
//
//  Created by JCSooHwanCho on 2019/10/03.
//  Copyright © 2019 JCSooHwanCho. All rights reserved.
//

import Foundation
import RxSwift

public protocol DataLoaderType {
    // 주어진 URL에서 데이터를 가져온다.
    func loadData(withURL url: URL) -> Observable<Data>
}

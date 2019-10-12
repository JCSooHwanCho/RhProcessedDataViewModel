//
//  ProcessingCommandType.swift
//  RacingImageViewer
//
//  Created by JCSooHwanCho on 2019/10/03.
//  Copyright © 2019 JCSooHwanCho. All rights reserved.
//

import Foundation

public protocol ProcessingCommandType {

    var baseURL: String { get } // 요청을 넣는 기본 URL

    var additionalPath: String { get set } // 요청을 넣는 세부 경로

    func execute<Element>(withData data: Data) -> Element? // 데이터를 가공하는 메서드
}

extension ProcessingCommandType {
    public var requestURL: URL? { // baseURL + additionalPath로 실제로 사용할 URL을 구성한다.
        guard let url = URL(string: baseURL + additionalPath) else {
            return nil
        }
        return url
    }
}

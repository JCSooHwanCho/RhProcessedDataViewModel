//
//  ProcessingCommand.swift
//  RacingImageViewer
//
//  Created by JCSooHwanCho on 2019/10/03.
//  Copyright © 2019 JCSooHwanCho. All rights reserved.
//

import Foundation

// 특정 URL에서 데이터를 요청하고 이를 가공하는 Command
open class ProcessingCommand: ProcessingCommandType {
    public var baseURL: String
    public var additionalPath: String

    public required init(withURLString urlString: String = "", additionalPath path: String = "") {
        baseURL = urlString
        self.additionalPath = path
    }

    open func execute<Element>(withData data: Data) -> Element? {
        fatalError()
    }
}

// DebugLog.swift
// (c) 2020 Nathan Clark. All rights reserved.
//
// MIT License
//
// Copyright (c) 2020 Nathan Clark
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

/// Prints a message to the device console. The message is printed if the application is built with the
/// `DEBUG` Swift compiler flag set, otherwise the message is discarded.
/// - Parameters:
///   - msg: Message to display.
public func DebugLog(_ msg: String = "",
                     file: String = #file,
                     line: Int = #line,
                     function: String = #function) {
    #if DEBUG
    /// Source filename with path information removed.
    let lastPath: String = NSURL(fileURLWithPath: file).lastPathComponent ?? file
    
    print("[DEBUG] \(lastPath):\(line) \(function): \(msg)")
    #endif
}

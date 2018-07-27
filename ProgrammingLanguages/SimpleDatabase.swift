//
//  SimpleDatabase.swift
//  ProgrammingLanguages
//
//  Created by Hamada Mouhamed on 1/16/18.
//  Copyright © 2018 Hamada Mouhamed. All rights reserved.
//

import UIKit
class Database {
    static var Array : [ProgrammingLanguageObject] = []
    static func PutProgrammingLanguage (){
        let SwiftAbout = """
 Swift is a powerful and intuitive programming language for macOS, iOS, watchOS and tvOS. Writing Swift code is interactive and fun, the syntax is concise yet expressive, and Swift includes modern features developers love. Swift code is safe by design, yet also produces software that runs lightning-fast.
In Swift Playgrounds you create small programs called “playgrounds” that instantly show the results of the code that you write. A single line of code can make amazing things happen. Interactive lessons teach key coding concepts, and additional challenges and templates encourage you to explore code in exciting new ways and to create something completely unique. There are even playgrounds that use Bluetooth to control robots, drones, and other hardware accessories. It’s easy to share your creations with friends, or record and post videos of your playgrounds in action.
Learn about Swift Playgrounds for iPad
"""
        Array.append(ProgrammingLanguageObject(Name: "Swift", About: SwiftAbout, Image: #imageLiteral(resourceName: "Swift")))
        let PythonAbout = """
ILM runs a batch processing environment capable of modeling, rendering and compositing tens of thousands of motion picture frames per day. Thousands of machines running Linux, IRIX, Compaq Tru64, OS X, Solaris, and Windows join together to provide a production pipeline used by ~800 users daily. Speed of development is key, and Python was a faster way to code (and re-code) the programs that control this production pipeline.
"""
        Array.append(ProgrammingLanguageObject(Name: "Python", About: PythonAbout, Image: #imageLiteral(resourceName: "Python")))
        let JavaScriptAbout = """
 JavaScript and Java are completely different languages, both in concept and design.

JavaScript was invented by Brendan Eich in 1995, and became an ECMA standard in 1997.
ECMA-262 is the official name of the standard. ECMAScript is the official name of the language.

You can read more about the different JavaScript versions in the chapter JS Versions.
Learning Speed
In this tutorial, the learning speed is your choice.

Everything is up to you.

If you are struggling, take a break, or reread the material.

Always make sure you understand all the "Try-it-Yourself" examples.
"""
        Array.append(ProgrammingLanguageObject(Name: "JavaScript", About: JavaScriptAbout, Image: #imageLiteral(resourceName: "JavaScript")))
    }
}

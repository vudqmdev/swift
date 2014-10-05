// RUN: rm -rf %t
// RUN: %swift -use-jit -playground -parse-stdlib -target x86_64-apple-macosx10.9 %s -emit-ir | FileCheck %s

import Swift

@objc class C { }

println()

// CHECK-LABEL: define i32 @main
// CHECK:         call void @swift_instantiateObjCClass({{.*}} @_TMdC10playground1C
// CHECK:         call void @_TFSs7printlnFT_T_
// CHECK:         ret void
// CHECK:       }

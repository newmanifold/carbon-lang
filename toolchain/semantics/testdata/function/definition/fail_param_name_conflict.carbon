// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// RUN: %{not} %{carbon-run-semantics}
// CHECK:STDOUT: cross_reference_irs_size: 1
// CHECK:STDOUT: calls: [
// CHECK:STDOUT: ]
// CHECK:STDOUT: callables: [
// CHECK:STDOUT:   {param_ir: block1, param_refs: block2},
// CHECK:STDOUT: ]
// CHECK:STDOUT: integer_literals: [
// CHECK:STDOUT: ]
// CHECK:STDOUT: real_literals: [
// CHECK:STDOUT: ]
// CHECK:STDOUT: strings: [
// CHECK:STDOUT:   a,
// CHECK:STDOUT:   Bar,
// CHECK:STDOUT: ]
// CHECK:STDOUT: nodes: [
// CHECK:STDOUT:   {kind: VarStorage, type: nodeIntegerType},
// CHECK:STDOUT:   {kind: BindName, arg0: str0, arg1: node+0, type: nodeIntegerType},
// CHECK:STDOUT:   {kind: VarStorage, type: nodeIntegerType},
// CHECK:STDOUT:   {kind: BindName, arg0: str0, arg1: node+2, type: nodeIntegerType},
// CHECK:STDOUT:   {kind: FunctionDeclaration, arg0: str1, arg1: callable0},
// CHECK:STDOUT:   {kind: FunctionDefinition, arg0: node+4, arg1: block0},
// CHECK:STDOUT: ]
// CHECK:STDOUT: node_blocks: [
// CHECK:STDOUT:   [
// CHECK:STDOUT:   ],
// CHECK:STDOUT:   [
// CHECK:STDOUT:     node+0,
// CHECK:STDOUT:     node+1,
// CHECK:STDOUT:     node+2,
// CHECK:STDOUT:     node+3,
// CHECK:STDOUT:   ],
// CHECK:STDOUT:   [
// CHECK:STDOUT:     node+1,
// CHECK:STDOUT:     node+3,
// CHECK:STDOUT:   ],
// CHECK:STDOUT:   [
// CHECK:STDOUT:     node+4,
// CHECK:STDOUT:     node+5,
// CHECK:STDOUT:   ],
// CHECK:STDOUT: ]

// CHECK:STDERR: {{.*}}/toolchain/semantics/testdata/function/definition/fail_param_name_conflict.carbon:[[@LINE+2]]:16: Redefining a in the same scope.
// CHECK:STDERR: {{.*}}/toolchain/semantics/testdata/function/definition/fail_param_name_conflict.carbon:[[@LINE+1]]:8: Previous definition is here.
fn Bar(a: i32, a: i32) {}

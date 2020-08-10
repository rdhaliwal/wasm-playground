;; Declare a module.
(module
  ;; func add(lhs: i32, rhs:i32) -> i32
  (func $add (param $lhs i32) (param $rhs i32) (result i32)
    ;; return lhs + rhs
    (i32.add (get_local $lhs) (get_local $rhs) )
  )

  ;; export the function add under the name "additional"
  (export "additional" (func $add))
)




;; To convert the wat file into binary:
;; wat2wasm add1.wat
  ;; wat2wasm add1.wat -o some_other_name.wasm

;; To get details about the binary:
;; wasm-objdump add1.wasm -x

;; Decompile into a pseudo programming language:
;; wasm-decompile add1.wasm

;; Convert wasm into c
;; wasm2c add1.wasm >> add1.c
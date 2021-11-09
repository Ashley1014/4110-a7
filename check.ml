open Ast

type error_info = string
exception IllTyped of error_info

let rec check_exp (e:exp) : typ =
  failwith "Unimplemented"

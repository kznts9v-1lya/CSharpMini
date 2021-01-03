(*Improved hashtable for deriving*)

type ('a, 'b) t = ('a, 'b) Hashtbl.t

let create = Hashtbl.create

let pp pp_key pp_value pp_formater ht =
  Hashtbl.iter
    (fun key value ->
      Format.fprintf pp_formater "@[<1>%a@ ->@ %a@]@\n@." pp_key key pp_value
        value)
    ht

let filter : ('a, 'b) t -> ('a -> 'b -> bool) -> ('a, 'b) t =
 fun ht predicate ->
  let filtred_ht = Hashtbl.create 100 in
  Hashtbl.iter
    (fun key value ->
      if predicate key value then Hashtbl.add filtred_ht key value)
    ht ;
  filtred_ht

let get_element_option key = Hashtbl.find_opt key

type currency = USD(float) | CHF(float)

let multiply = (currency, times) =>
  switch currency {
  | USD(amount) => USD(amount *. times)
  | CHF(amount) => CHF(amount *. times)
  }

exception Different(string)

let equal = (alice, bob) =>
  switch (alice, bob) {
  | (USD(alice), USD(bob))
  | (CHF(alice), CHF(bob)) =>
    alice === bob
  | _ => raise(Different("Not ready to compare different currency"))
  }

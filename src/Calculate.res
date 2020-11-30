open Money

let multiply = (currency, times) =>
  switch currency {
  | USD(amount) => USD(amount *. times)
  | CHF(amount) => CHF(amount *. times)
  }

let reduce = money => Bank.reduce(money, Bank.USD)

let equal = (alice, bob) =>
  switch (alice, bob) {
  | (USD(a), USD(b))
  | (CHF(a), CHF(b)) =>
    a === b
  | _ => reduce(alice) === reduce(bob)
  }

let plus = (alice, bob) =>
  switch (alice, bob) {
  | (USD(a), USD(b)) => USD(a +. b)
  | (CHF(a), CHF(b)) => CHF(a +. b)
  | _ => USD(reduce(alice) +. reduce(bob))
  }

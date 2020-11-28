open Money

let multiply = (currency, times) =>
  switch currency {
  | USD(amount) => USD(amount *. times)
  | CHF(amount) => CHF(amount *. times)
  }

let equal = (alice, bob) =>
  switch (alice, bob) {
  | (USD(a), USD(b))
  | (CHF(a), CHF(b)) =>
    a === b
  | (USD(a), CHF(_)) => a === Bank.reduce(bob, Bank.USD)
  | (CHF(a), USD(_)) => a === Bank.reduce(bob, Bank.CHF)
  }

let plus = (alice, bob) =>
  switch (alice, bob) {
  | (USD(a), USD(b)) => USD(a +. b)
  | (CHF(a), CHF(b)) => CHF(a +. b)
  | (USD(a), CHF(_)) => USD(a +. Bank.reduce(bob, Bank.USD))
  | (CHF(a), USD(_)) => CHF(a +. Bank.reduce(bob, Bank.CHF))
  }

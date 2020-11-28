open Jest

open Expect

describe("reduce", () => {
  test("USD to CHF", () => {
    let alice = Bank.reduce(Money.USD(5.0), Bank.CHF)
    expect(alice) |> toBe(10.0)
  })
  test("CHF to USD", () => {
    let alice = Bank.reduce(Money.CHF(5.0), Bank.USD)
    expect(alice) |> toBe(2.5)
  })
})

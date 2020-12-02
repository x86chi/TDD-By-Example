open Jest

open Expect

describe("reduce", () => {
  open Money
  test("USD to CHF", () => {
    let alice = Bank.reduce((USD, 5.0), CHF)
    expect(alice) |> toBe(10.0)
  })
  test("CHF to USD", () => {
    let alice = Bank.reduce((CHF, 5.0), USD)
    expect(alice) |> toBe(2.5)
  })
})

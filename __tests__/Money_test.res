open Jest

open Expect

test("mulitply", () => {
  let money = Money.generate(Money.Dollar, 5)

  expect(Money.multiply(money, 2)) |> toEqual({...money, amount: 10})
})

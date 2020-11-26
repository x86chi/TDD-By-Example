open Jest

open Expect

test("mulitply 2 test", () => {
  expect(App.mulitply(5)) |> toBe(10)
})

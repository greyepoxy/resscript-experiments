open Vitest

describe("Another", _ => {
  it("should do basic thing", t => {
    open Expect

    t->assertions(1)

    expect(2)->toBe(2)
  })
})

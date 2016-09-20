open bool nat

definition foo (b : bool) : nat → nat :=
match b with
| tt := λ x : nat, 0
| ff := λ y : nat, (succ 0)
end

example : foo tt 1 = 0 := rfl
example : foo ff 1 = 1 := rfl

definition zero_fn := λ x : nat, 0

definition foo2 : bool → nat → nat
| tt := succ
| ff := zero_fn

example : foo2 tt 1 = 2 := rfl
example : foo2 tt 2 = 3 := rfl
example : foo2 ff 1 = 0 := rfl
example : foo2 ff 2 = 0 := rfl

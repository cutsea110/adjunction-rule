sig A{
  f: B
}
sig B{
  g: A
}
pred adj{
  f.g.f = f and g.f.g = g
}
run adj

pred eq{
  f.g = (A<:iden) and g.f = (B<:iden)
}
run eq

check { eq => adj }
check { adj => eq }

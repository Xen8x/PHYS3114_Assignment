#import "@preview/physica:0.9.8": *




==  Constructing a Green's Function.

Given the following conditions in which the Green Function satisfies,
$
  dv(G(x,x'),x,2, d: partial) = - (delta(x-x'))/c_0, quad G(0,x') = 0, quad evaluated(dv(G,x,d:partial))_(x=L) = 0 
$ <bound>

Using the fact we are given the potential at one side of the boundary ($x = 0$), and the derivative of the normal to on the other end of the potential ($x=L$). We have to use both descriptions to ascribe a Green's Function that satisfies the mixed boundary conditions. First consider when $x != x'$, the first term in @bound becomes,
$
  dv(G(x,x'),x,2) = 0
$
This implies the Green's Function is linear in nature, therefore we can write it as,
$
  G(x,x') = cases(
    A x & quad x < x',
    B + C(L-x) & quad x' < x < L.
  )
$
Consider the fact the first derivative of the Green's function has been given to us on the boundary, 
$
  evaluated(dv(G,x,d:partial))_(x=L) = C L =0,
$
therefore, this defines that $C = 0$. Rewriting our Green's function with this gives us,
$
    G(x,x') = cases(
    A x & quad x < x',
    B & quad x' < x < L.
  )
$
We need that the Green's Function at $x = x'$ be continuous to be at the discontinuity to satisfy the delta function. We can write this out as,
$
  A x = B quad "as" x-> x'
   $ <rel1>
Taking the partial with respect to $x'$ from both sides gives us the following relationship the function must satisfy,
$
  -evaluated(dv(G,x,d:partial))_(x->x'_-) + evaluated(dv(G,x,d:partial))_(x->x'_+) = dv(G,x,d:partial) \

  -A + 0 = 1/epsilon_0 \
  A = 1/epsilon_0

$

Substituting this into @rel1, 
$
  B = x'/epsilon_0   
$
Therefore, we can define the final Green Function as,
$
      G(x,x') = cases(
    x/epsilon_0 & quad x < x',
    x'/epsilon_0 & quad x' < x < L.
  )
$ 
#align(right,$square.stroked$)

== Verify the derived Green's Function is symmetric under $x <-> x'$
Let's consider the case where initially $x < x'$, such that 
$ G(x,x')  = x/epsilon_0, $<eqq1>
we then perform the transformation. We can see by inspection that the function satisfies the other case so that 
$
  G(x,x') = x'/epsilon_0
$
but the transformation turns the $x -> x'$, so the solution becomes,
$
  G(x',x) = x/epsilon_0.
$<eq2>
By equating @eqq1 and @eq2, we get that the derived Green's function is symmetric,
$
  G(x,x') = G(x',x)
$
We can use a similar derivation to prove for the other initial case. 
== Show that the boundary terms in Green's identity vanish for the stated boundary conditions.
Using Green's second identity for the general three dimensional case,
$ integral_V dif^3 bold(r) [phi nabla^2 psi - psi nabla^2 phi]
  = integral.cont_S dif bold(S) dot (phi nabla psi - psi nabla phi) $

As our problem is restricted along 1 dimension, we can rewrite the identity in a more useful manner,
$ integral_0^L (phi (dif^2 psi)/(dif x^2) - psi (dif^2 phi)/(dif x^2)) dif x
  = [phi (dif psi)/(dif x) - psi (dif phi)/(dif x)]_0^L $
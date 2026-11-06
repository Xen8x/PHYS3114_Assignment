#import "@preview/physica:0.9.8": *

#set page(paper: "a4", margin: (x: 0.6in, y: 0.6in))
#set heading(numbering: "1.")
#set math.equation(numbering: "(1)")
#set text(font: "Palatino Linotype", size: 11pt, lang: "en")

#show heading.where(level: 2): it => {
  counter(math.equation).update(0)
  it
}
#align(center, text(2em)[
  *PHYS3114: Electrodynamics Assignment*
])

#set heading(numbering: (..nums) => {
  let levels = nums.pos()
  if levels.len() == 2 {
    numbering("a)", levels.at(1))
  } else {
    numbering("1.", ..levels)
  }
})

= Green's Function with mixed boundary Conditions
On the interval $0 < x <L$, the electrostatic potential satisfies,
$
  dv(phi,x,2) = - rho_0/epsilon_0, quad phi(0) = 0,quad phi'(L) = 0,
$
where $rho_0$ is constant.

#include "q1.typ"
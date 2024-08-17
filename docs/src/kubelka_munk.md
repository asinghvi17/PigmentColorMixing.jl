# Kubelka-Munk color theory

Kubelka-Munk theory and its extensions are fundamentally a way to describe how light interacts with layers of pigments. 

We define a pigment using its absorption (``K``) and scattering (``S``) coefficients.  They are both vectors sampled over the visible spectrum - several examples of this exist, ranging from a simple 3-element implementation corresponding to RGB, to a more densely sampled implementation which can be arbitrarily precise.  

## Implementation

A pigment is a type which contains `K` and `S` vectors, both of some type, and the wavelengths at which each value is sampled. It implements addition and multiplication operations by scalars.  

Pigments are still fundamentally colors, and as such can be arbitrarily converted to any Colors.jl color type.  This is, by nature, a lossy operation in most cases, though - we don't recommend this.

A set of pigments (as a [`PigmentSet`](@ref)) is a collection of pigments, like a set of [basis vectors](https://en.wikipedia.org/wiki/Basis_(linear_algebra)) for the space of colors.  It's basically a vector of pigments, but all pigments must share the same sampling of wavelengths.  This makes the math a lot simpler, since there is otherwise no way to meaningfully add pigments with different wavelength samplings.

A set of pigments can be weighted and added together to create a new pigment, or the weights and source `PigmentSet` can be used to create a `MixedPigment` which represents a linear combination of pigments.  MixedPigments are just a PigmentSet with an additional weight vector, but they are colors in their own right, and can as such be converted to any Colors.jl color type.




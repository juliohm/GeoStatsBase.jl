# ------------------------------------------------------------------
# Licensed under the ISC License. See LICENSE in the project root.
# ------------------------------------------------------------------

"""
    ProductPartitioner(p₁, p₂)

A method for partitioning spatial objects using the product of two
partitioners `p₁` and `p₂`.
"""
struct ProductPartitioner{P1<:AbstractFunctionPartitioner,
                          P2<:AbstractFunctionPartitioner} <: AbstractFunctionPartitioner
  p₁::P1
  p₂::P2
end

(p::ProductPartitioner)(i, j) = p.p₁(i, j) * p.p₂(i, j)

Base.:*(p₁::AbstractFunctionPartitioner,
        p₂::AbstractFunctionPartitioner) =
  ProductPartitioner(p₁, p₂)

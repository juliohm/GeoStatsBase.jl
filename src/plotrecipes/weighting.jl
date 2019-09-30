# ------------------------------------------------------------------
# Licensed under the ISC License. See LICENCE in the project root.
# ------------------------------------------------------------------

@recipe function f(w::SpatialWeights)
  @series begin
    label --> "weights"
    domain(w), collect(w)
  end
end

module CallMeMaybe

export @maybe

"""
    @maybe x [probability=0.5]

Return `x` with probability `p`.
"""
macro maybe(x, p::Real=0.5)
    0 <= p <= 1 || throw(ArgumentError("Probability must be between 0 and 1"))
    rand() < p ? esc(x) : :(nothing)
end

end

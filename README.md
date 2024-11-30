# CallMeMaybe

[![Build Status](https://github.com/AntonOresten/CallMeMaybe.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/AntonOresten/CallMeMaybe.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/AntonOresten/CallMeMaybe.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/AntonOresten/CallMeMaybe.jl)

Hey, I just met you, and this is crazy, but here's my package, so use it, maybe?

## Usage

```julia
using CallMeMaybe

# maybe define a function
@maybe function greet()
    # maybe print a message
    @maybe println("Hello, world!")
end

# maybe nothing, otherwise UndefVarError, otherwise print a message
@maybe greet()

# print with a 10% chance
@maybe 0.1 println("Hello, world!")
```

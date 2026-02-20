module MTKEnzymeCoreExt

using ModelingToolkitBase: AbstractSystem
import EnzymeCore

# AbstractSystem types should be treated as inactive (constant) for Enzyme.
# Property access on systems retrieves symbolic metadata, not numerical values.
function EnzymeCore.EnzymeRules.inactive_noinl(
        ::typeof(Base.getproperty), ::AbstractSystem, ::Symbol,
    )
    return true
end

end

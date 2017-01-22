module AMDB

using IntervalSets
using AutoHashEquals
using DataStructures: Accumulator
import Libz
import GZip

export
    # utilities
    process_compressed_database,
    below_maxiter,
    random_push!,
    deserialize_gz,
    # codes
    AMP,
    VMZ,
    # parsing
    parsedtype,
    Gender, male, female,
    AMDB_Date,
    MaybeEmpty,
    AutoEnum,
    LineParser,
    # types
    DateInterval,
    PersonSpell,
    PersonSpellParser,
    AMPSpell,
    AMPSpellParser,
    VMZSpell,
    VMZSpellParser,
    IndividualData,
    # reading
    read_person_spells!,
    read_AMP_spells!,
    read_VMZ_spells!,
    traverse_AMP_spells

include("utilities.jl")
include("AMP_codes.jl")
include("VMZ_codes.jl")
include("parsing.jl")
include("types.jl")
include("reading.jl")
include("analysis.jl")

end # module

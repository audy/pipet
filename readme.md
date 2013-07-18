# Pipet

Bioinformatics Database "Package Manager".

## Example Usage

```bash

# List avaiable databases
darwin@beagle> pipet list
ncbi/nt

# Download a database
darwin@beagle> pipet pull ncbi/nt
Downloading ncbi/nt.fasta from ftp://ftp.ncbi.nih.gov/blast/db/fasta/nt.gz
Success!
```

## Installation

```
# on most 'nix systems
(sudo) gem install pipet
```

## Adding Databases

Databases are defined using Ruby. However, the Domain-Specific Language
should make it possible to define databases without having to know how
to program in Ruby:

```Ruby
class NCBINT < Database

  name 'ncbi/nt'
  url 'ftp://ftp.ncbi.nih.gov/blast/db/FASTA/nt.gz'
  description 'NCBI non-redundant nucleotide database'
  md5 'f77aff452dd1ba6b0e26b8d6b97b0a62'

end
```

See `Sources/` for examples.

## Porquoi?

1. I got tired of having to hunt for databases and thought it would be
useful to store their locations and md5 checksums all in one place.
2. Most bioinformatics databases do not use any sort of versioning which
hinders reproducibility of computation experiments.  Pipet uses a
combination of MD5 checksums and Git which allows for a type of
versioning (the original database may no longer be available on the web
but at least we can tell).

# Copyright

Copyright (c) 2013 Austin Richardson. See LICENSE.txt for details.

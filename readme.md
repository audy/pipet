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

# Copyright

Copyright (c) 2013 Austin Richardson. See LICENSE.txt for details.

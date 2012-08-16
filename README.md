# Puppetlabs-debbuilder Module #

This module is designed to stand up a debian builder. It can take care of
either adding the packages required to build using debuild or using pbuilder.
If desired it can also set up the appropriate cows for a pbuilder/cowbuilder
solution. It brings in keyrings for debian and ubuntu and lays down a
pbuilderrc in /etc to add the correct repos to a given cow.

## Example Usage ##
<pre>
    class { "debbuilder":
      pe => false,
      use_cows => true,
      cows => ["lucid", "squeeze", "precise"],
    }
</pre>

  This incantation will create i386 and amd64 cows for lucid, squeeze and
  precise and install the needed packages on the builder. The cows will be set
  up with the correct keys for their repos.

### The Pieces ###

  The module has four classes and one defined type included.

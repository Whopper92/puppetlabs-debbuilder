define debbuilder::setup::cow_exec (
    $cow_root       = '/var/cache/pbuilder'
  ) {

  exec { "${name}-i386":
    path          => "/usr/sbin:/usr/bin:/bin:/sbin",
    command       => "cowbuilder --create --dist ${name} --architecture i386 --debug",
    unless        => "test -e ${cow_root}/base-${name}-i386.cow",
    environment   => ["DIST=${name}", "ARCH=i386"],
    logoutput     => on_failure,
    timeout       => 0,
  }

  exec { "${name}-amd64":
    path          => "/usr/sbin:/usr/bin:/bin:/sbin",
    command       => "cowbuilder --create --dist ${name} --architecture amd64 --debug",
    unless        => "test -e ${cow_root}/base-${name}-amd64.cow",
    environment   => ["DIST=${name}", "ARCH=amd64"],
    logoutput     => on_failure,
    timeout       => 0,
  }

}

# Define facts based on hostname schema: location-project-tier-role
if Facter.value(:hostname) =~ /^([^-]+)-([^-]+)-([^-]+)-([^\-0-9]+)/
  Facter.add('location') do
    setcode do
      $1
    end
  end
  Facter.add('project') do
    setcode do
      $2
    end
  end
  Facter.add('tier') do
    setcode do
      $3
    end
  end
  Facter.add('role') do
    setcode do
      $4
    end
  end
# Define facts based on hostname schema: location-tier-role
elsif Facter.value(:hostname) =~ /^([^-]+)-([^-]+)-([^\-0-9]+)/
  Facter.add('location') do
    setcode do
      $1
    end
  end
  Facter.add('tier') do
    setcode do
      $2
    end
  end
  Facter.add('role') do
    setcode do
      $3
    end
  end
# Define facts based on hostname schema: location-role
elsif Facter.value(:hostname) =~ /^([^-]+)-([^\-0-9]+)/
  Facter.add('location') do
    setcode do
      $1
    end
  end
  Facter.add('role') do
    setcode do
      $2
    end
  end
# Define facts based on hostname schema: role
elsif Facter.value(:hostname) =~ /^([^\-0-9]+)/
  Facter.add('role') do
    setcode do
      $1
    end
  end
else
  Facter.add('location') do
    setcode do
      ''
    end
  end
  Facter.add('project') do
    setcode do
      ''
    end
  end
  Facter.add('tier') do
    setcode do
      ''
    end
  end
  Facter.add('role') do
    setcode do
      'default'
    end
  end
end

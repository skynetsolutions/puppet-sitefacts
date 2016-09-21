if Facter.value(:network) != ''
  Facter.add('network_number') do
    setcode do
      Facter.value(:network).split('.').slice(0, 3).join('.')
    end
  end
  Facter.add('network_octeta') do
    setcode do
      Facter.value(:network).split('.').slice(0, 1).join('.')
    end
  end
  Facter.add('network_octetb') do
    setcode do
      Facter.value(:network).split('.').slice(1, 1).join('.')
    end
  end
  Facter.add('network_octetc') do
    setcode do
      Facter.value(:network).split('.').slice(2, 1).join('.')
    end
  end
  Facter.add('network_octetd') do
    setcode do
      Facter.value(:network).split('.').slice(3, 1).join('.')
    end
  end
end

Facter.add("memberwindomain") do
  confine :kernel => :windows
  setcode do
    ps_exec  = 'C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe'
    ps_query = "$psq=(gwmi win32_computersystem).partofdomain; If (!$psq) { echo 'false' } else { echo 'true' }"
    ps_cmd   = (Facter::Util::Resolution.exec(%Q{#{ps_exec} -command "#{ps_query}"})).strip
  end
end

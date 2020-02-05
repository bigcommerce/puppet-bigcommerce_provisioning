class bigcommerce_provisioning(
  Enum['present', 'absent'] $ensure = 'absent',
) {
  file { '/usr/local/bin/self-service-registration':
      ensure  => $ensure,
      owner   => 'root',
      group   => 'root',
      mode    => '0755',
      content => template("${module_name}/self-service-registration.erb"),
    }
}


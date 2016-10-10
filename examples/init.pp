class tea {

  class { '::tea::ports':
    any_port  => 5001,
    unp_port  => 5002,
    priv_port => 1001,
  }

}

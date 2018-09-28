class { 'nvm':
  user => 'foo',
}

nvm::node::install { '0.12.7':
  user        => 'foo',
  set_default => true,
  require     => Class['nvm'],
}

nvm::node::install { '0.10.36':
  user    => 'foo',
  require => Class['nvm'],
}

nvm::node::install { 'iojs':
  user    => 'foo',
  require => Class['nvm'],
}

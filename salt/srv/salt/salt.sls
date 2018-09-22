## opensds-installer/srv/salt/salt.sls
base:
  '*':
    {{ '- salt.pkgrepo' if grains.os_family not in ('Suse',) else '' }} #Is suse fixed yet?
    - salt.minion
    - salt.master
    # salt.standalone
    - salt.formulas
    - salt.ssh

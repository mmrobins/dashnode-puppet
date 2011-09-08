class manageduser ($user, $key, $key_type = 'ssh-rsa') { 
	user { $user :
		ensure => present,
		managehome => true,
	}
	ssh_authorized_key { $user :
		ensure => present,
		key => $key,
		user => $user,
		type => $key_type,
	}
}

node default {
	class { 'manageduser' :
		user => 'matt', 
		key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAoSzIjnKAlkzmxk8Y32vikLlc8pt0cWi+zDtwCm2cGrxoTDMuDFcia4lqXkVTN4eczsfmH7gnpaJxNWjUdiEp+6p38z5r4W9EATsyPjWkTVDlSbKUX/gRFCEHIbjBGlDEOSEDI6umVEwff+AqAFdmrxzWjbM5WnsH5YbQ/ymq1/cDzfKUU5+RttDrivSBbv4Gszz/1wMGsyAIsT3QbZJur0LjvrY9/nyj1PoJ02V/RSZ2LiYr/vJB7d+7fn1k5EiOZIz8ubGRIYPFXh50931A0MO3mkVFVDQkHLbsANzcLUHtY7X1t6/GhZ8wqy9Q1YgBAp6s6qC0GJtIDstHMsfNZw==',
	}
	ssh_authorized_key { 'matt-root' :
		ensure => present,
		key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAoSzIjnKAlkzmxk8Y32vikLlc8pt0cWi+zDtwCm2cGrxoTDMuDFcia4lqXkVTN4eczsfmH7gnpaJxNWjUdiEp+6p38z5r4W9EATsyPjWkTVDlSbKUX/gRFCEHIbjBGlDEOSEDI6umVEwff+AqAFdmrxzWjbM5WnsH5YbQ/ymq1/cDzfKUU5+RttDrivSBbv4Gszz/1wMGsyAIsT3QbZJur0LjvrY9/nyj1PoJ02V/RSZ2LiYr/vJB7d+7fn1k5EiOZIz8ubGRIYPFXh50931A0MO3mkVFVDQkHLbsANzcLUHtY7X1t6/GhZ8wqy9Q1YgBAp6s6qC0GJtIDstHMsfNZw==',
		user => 'root',
		type => 'ssh-rsa',
	}
	ssh_authorized_key { 'josh' :
		ensure => present,
		key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAnIJuskc02IuaLPthiUrWfGR8R1FmL35+sOuNNlPF9MRca6G3mUHl3LE7pdBS5XifziBWraXyl7HWgY5bmDDeo7NdvzsZd8SOKh3iVvo6+CQMp5QYOp69w6+jkV5deu97GbSM5UgDyFwnEWBeMfOTZs9pwXbYXjM+a2aJELC4G2RNq5ArYSUgnRAaaQqM+huAZqhIvcFLV0XQd+B2a6mfyKM3kw12VVJCylzQAboDlMz/Q4olNVVQyuTxk9T4cxPTu/YYz9sYjaNrOfTpV4QCqLXsjS8kWlp8+/zkLUnw+4+u2sEnzI/t0/L7OE3zsTvaU+BDMIzUJoAuFQEdRsXZXw==',
		user => 'root',
		type => 'ssh-rsa',
	}
	ssh_authorized_key { 'zach' :
		ensure => present,
		key => 'iAAAAB3NzaC1yc2EAAAABIwAAAQEAmheUCx1OFo4PECzIsxwZUWvfFDDFxs1H6UpMPEy5rVgYTe5PlytTA7tcZHb01nh/m1m9qQISFVG065UB8XceFvbN3NSSDNT/38ZC0Z5ho9PV20NUOecAn9eRvysFcJqxOPpqLybcVFb0mz8npz7tznBOstyVjm0KTztPKcpvfD8GrklDquoIp6DUwFuAbzqle3vG1jnLzqD/8omu1+1gNJttq0FROmITknnTNptuhV3/BKex5BJFS9O8EOXs7iq+VUQIRAsIQOeVXulaSml1ovXPLSoxZAkCEJanhZLGmOFiEmKaMADz6X4PWEWFcVOa7XAGXRqyhOCJcCCARYm+Kw==',
		user => 'root',
		type => 'ssh-rsa',
	}
	ssh_authorized_key { 'rick' :
		ensure => present,
		key => 'AAAAB3NzaC1kc3MAAACBANX9uP4C4AJG97PpuKDSbSAKEORRotm0jAVYegWzLz0fR3c2BaMttVA8r7yb+seSNUqn6c9w50DOEpBj+jdwLG5rvQIKWZd2PwGdnfmS+Qxt8LEBDtWGZrK50WA2tR+jKOAaE79uoF+Axp8YAU5l+FuP3JS/FMydqXwZW0A8guKBAAAAFQC5wbdG1W68CcluexTOtmQpUvLTUwAAAIAxLuTAvN2hjeMH0TeYi+wM59pZ+O5VRAZKBRSb8oH7/M71T5nukEDWXwgg4uHHdGsaCn06gC71f8kzhz712NfaN5ea/6pnveOi+P0CoiVA9IhXGZLogE5guCvalWLxStoyR+qrrYIcvbfpsU/oiGiTQBIa9zOPaZF9pfi4meXTTwAAAIATdt0cyDo3ASL7fOsjOP6C3CqvaCEAweU6wmnj/rzvUM5FVkTRWAfEk2A/61TBJVudeOAKpaZo63WZ17CrgNtFiuGQmshJ6/IzDqz26og8uAZeAVE0LiIYhnh0cqXoll5MHqO3IcnB/xJ42I5oVY9aU193iX5Xo1hVE6R1j0LL+A==',
		user => 'root',
		type => 'ssh-dss',
	}
	ssh_authorized_key { 'max' :
		ensure => present,
		key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAxILfrANujc+DfbfSEAhw3bO+Pk7lF6ZMLvto6fahL2LWadTIYYCqodGftZ98q+2c3/6miJx+e8eCL+RQnI+RUUubqq88G3OhwdW/V9xFIPBXYGzSGWNQbcPMRZD7gAMYvMarR4RNI08rO2oozwDzKknXfljlCPucu4F++8/S3FgfpTqRDFJhksNxwIioSErtVXHiXojJ+6AE61uasD22S/sH5Net1wb22AMrVvSWqICTSaStHclNP7Nyk6Pmt1+gShFWeQiAF/RTEdv7LYM1SKLHiyuEXNaoLp18F/oWF0h+LYSkKVR/md2FJGVT6wAvM1KwhkL9u7XebSQRCn4I3w==',
		user => 'root',
		type => 'ssh-rsa',
	}
}

node dashnode2, dashnode3, dashnode4 inherits default {
	class { 'mcollective': stomp_server => "dashnode1.pldemo.net", client => true }
}

node dashnode6, dashnode7, dashnode8, dashnode9, dashnode10 inherits default {
	class { 'mcollective': stomp_server => "dashnode5.pldemo.net", client => true }
}

node dashnode1 inherits default {
	class { 'mcollective': stomp_server => "dashnode1.pldemo.net", client => true }
	include java
	include activemq
}

node dashnode5 inherits default {
	class { 'mcollective': stomp_server => "dashnode5.pldemo.net", client => true }
	class { 'java': distribution => 'java-1.6.0-openjdk' }
	include activemq
}

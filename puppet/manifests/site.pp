node "master" { 
	include mysql
}

node "node1" { 
	include apache
}

node "node2" { 
	include php
}

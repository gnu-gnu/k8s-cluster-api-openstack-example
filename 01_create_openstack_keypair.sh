#/bin/bash
if openstack keypair show $1; then
  echo " remove existing key"
  openstack keypair delete $1 
  chmod 744 $1.pem
  rm -f $1.pem
fi
echo "create key $1"
openstack keypair create $1 > $1.pem
chmod 400 $1.pem
cat $1.pem

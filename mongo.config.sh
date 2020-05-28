
docker exec -it replicamongo1 mongo

########################### CONFIGURANDO O CLUSTER ###############################

rs.initiate(
  {
    _id : 'rs0',
    members: [
      { _id : 0, host : "mongo1:27017" },
      { _id : 1, host : "mongo2:27017" },
      { _id : 2, host : "mongo3:27017", arbiterOnly: true }
    ]
  }
)

#############################################################################################
# add hosts no /etc/hosts do target
# 127.0.0.1 mongo1 mongo2 mongo3


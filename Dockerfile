# VOTEDB:V2 
# VERSION2
# Base image

FROM mariadb:10.1
# Environment variables

ENV 	MYSQL_ROOT_PASSWORD india@123
ENV 	MYSQL_DATABASE vote_dbv2

# Database creation
COPY 	source.sql /docker-entrypoint-initdb.d/

# Binary execution

ENTRYPOINT ["docker-entrypoint.sh"]

# Execution of service 
CMD ["mysqld"]

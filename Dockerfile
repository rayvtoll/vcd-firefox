FROM rayvtoll/vcd-base-app

RUN apt-get update && apt-get install -y firefox 
ENTRYPOINT ["sh", "entrypoint.sh"]

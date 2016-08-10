call mvn -B -s settings.xml -DskipTests=true clean install
call java -Dspring.profiles.active="datajpa,heroku" -DDATABASE_URL="postgres://postgres:12345678@localhost:5433/topjava" -jar target/dependency/webapp-runner.jar target/*.war

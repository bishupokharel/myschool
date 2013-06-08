#
# these properties are used property value substition
# server.xml, context.xml & log4j.properties allow
# ${} property value substitution
#



IP_ADDRESS="127.0.0.1"
JAVA_OPTS="$JAVA_OPTS -Dserver.ip.address=$IP_ADDRESS"
JAVA_OPTS="$JAVA_OPTS -Dserver.user.database=$CATALINA_HOME/conf/tomcat-users.xml"
JAVA_OPTS="$JAVA_OPTS -Dserver.jvm.route=1"
JAVA_OPTS="$JAVA_OPTS -Dserver.session.timeout=30"
JAVA_OPTS="$JAVA_OPTS -Dserver.proxy.host="
JAVA_OPTS="$JAVA_OPTS -Dserver.proxy.port="
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.authenticate=false"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.ssl=false"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.password.file=$CATALINA_HOME/conf/jmxremote.password"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.access.file=$CATALINA_HOME/conf/jmxremote.access"
JAVA_OPTS="$JAVA_OPTS -Djava.security.auth.login.config=$CATALINA_HOME/conf/jaas.config"
JAVA_OPTS="$JAVA_OPTS -XX:+UseConcMarkSweepGC"
JAVA_OPTS="$JAVA_OPTS -XX:+CMSClassUnloadingEnabled"
JAVA_OPTS="$JAVA_OPTS -XX:+HeapDumpOnOutOfMemoryError"

# uncomment these lines to run in debug mode
#
#JAVA_OPTS="$JAVA_OPTS -Dserver.syslog.host=$IP_ADDRESS"
#JAVA_OPTS="$JAVA_OPTS -Dserver.syslog.level=WARN"
#-Xdebug
#-Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8081
#-Xnoagent
#-Djava.compiler=NONE









#
# print off settings
#
echo "JAVA_OPTS: %JAVA_OPTS%"


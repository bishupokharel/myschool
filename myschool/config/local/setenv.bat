@echo off

rem
rem these properties are used property value substitution
rem server.xml, context.xml & log4j.properties allow
rem ${} property value substitution
rem

set IP_ADDRESS=127.0.0.1
set JAVA_OPTS=%JAVA_OPTS% -Dserver.ip.address=%IP_ADDRESS%
set JAVA_OPTS=%JAVA_OPTS% -Dserver.user.database="%CATALINA_HOME%\conf\tomcat-users.xml"
set JAVA_OPTS=%JAVA_OPTS% -Dserver.jmx.registry.port=8015
set JAVA_OPTS=%JAVA_OPTS% -Dserver.jmx.server.port=8021
set JAVA_OPTS=%JAVA_OPTS% -Dserver.jvm.route=1
set JAVA_OPTS=%JAVA_OPTS% -Dserver.session.timeout=30
set JAVA_OPTS=%JAVA_OPTS% -Dserver.proxy.name=
set JAVA_OPTS=%JAVA_OPTS% -Dserver.proxy.port=
set JAVA_OPTS=%JAVA_OPTS% -Dcom.sun.management.jmxremote.authenticate=false
set JAVA_OPTS=%JAVA_OPTS% -Dcom.sun.management.jmxremote.ssl=false
set JAVA_OPTS=%JAVA_OPTS% -Dcom.sun.management.jmxremote.password.file=%CATALINA_HOME%\conf\jmxremote.password
set JAVA_OPTS=%JAVA_OPTS% -Dcom.sun.management.jmxremote.access.file=%CATALINA_HOME%\conf\jmxremote.access
set JAVA_OPTS=%JAVA_OPTS% -Djava.security.auth.login.config=%CATALINA_HOME%\conf\jaas.config
set JAVA_OPTS=%JAVA_OPTS% -XX:+UseConcMarkSweepGC
set JAVA_OPTS=%JAVA_OPTS% -XX:+CMSClassUnloadingEnabled
set JAVA_OPTS=%JAVA_OPTS% -XX:+HeapDumpOnOutOfMemoryError
set JAVA_OPTS=%JAVA_OPTS% -Xmx1024m
set JAVA_OPTS=%JAVA_OPTS% -XX:MaxPermSize=256m

rem
rem SNMP for cactus
rem
rem set JAVA_OPTS=%JAVA_OPTS% -Dcom.sun.management.snmp.interface=%IP_ADDRESS%
rem set JAVA_OPTS=%JAVA_OPTS% -Dcom.sun.management.snmp.port=165
rem set JAVA_OPTS=%JAVA_OPTS% -Dcom.sun.management.snmp.acl=false
rem
rem uncomment these lines to run in debug mode
rem
rem set JAVA_OPTS=%JAVA_OPTS% -Dserver.syslog.host=%IP_ADDRESS%
rem set JAVA_OPTS=%JAVA_OPTS% -Dserver.syslog.level=WARN
rem -Xdebug
rem -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8081
rem -Xnoagent
rem -Djava.compiler=NONE
rem
rem print off settings
rem
echo JAVA_OPTS: %JAVA_OPTS%

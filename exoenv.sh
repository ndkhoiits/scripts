PLAY=/home/khoinguyen/software/programming/play-1.2.3
# SET CLASSPATH
JAVA_HOME=~/java/jdk1.6
export JAVA_HOME
REMOTE_DEBUG="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=n"
# JAVA_OPTS="$JAVA_OPTS $REMOTE_DEBUG"
# export JAVA_OPTS

IDEA_JDK=$JAVA_HOME
export IDEA_JDK

IDEA_HOME=/home/khoinguyen/software/programming/idea-IU-95.627
export IDEA_HOME

EXO_WORKING_DIR=~/java
export EXO_WORKING_DIR

ANDROID_HOME=$EXO_WORKING_DIR/android-sdk-linux_86
export ANDROID_HOME

M2_HOME=$EXO_WORKING_DIR/apache-maven-2.2.1
export M2_HOME

ANT_HOME=$EXO_WORKING_DIR/apache-ant-1.7.1
export ANT_HOME
ANT_OPTS="-Xmx1024m -XX:MaxPermSize=256m"
export ANT_OPTS

SOCIAL_HOME=$EXO_WORKING_DIR/eXoProjects/social/trunk

ECM_HOME=$EXO_WORKING_DIR/eXoProjects/ecm/trunk

JDK_HOME=$JAVA_HOME
export JDK_HOME

SVN_HOME=$EXO_WORKING_DIR/svn-win32-1.6.6

MAVEN_OPTS="-Xmx256M -XX:MaxPermSize=128m"

alias open="nautilus"

alias cdworking="cd $EXO_WORKING_DIR"
alias cdprojects="cd $EXO_WORKING_DIR/eXoProjects"
alias mvneclipse="mvn eclipse:clean && mvn eclipse:eclipse -DdownloadSources=true"
alias editenv="gedit $EXO_WORKING_DIR/exoenv.sh &"
alias openworking="open $EXO_WORKING_DIR"
###############################PLATFORM######################################
###########################################################################
###########################################################################

PLATFORM_VERSION=3.2.0-PLF-SNAPSHOT
export PLATFORM_VERSION

PLATFORM_HOME=$EXO_WORKING_DIR/eXoProjects/exogtn
export PLATFORM_HOME

PLATFORM_TOMCAT=$PLATFORM_HOME/packaging/pkg/target/tomcat
export PLATFORM_TOMCAT

PLATFORM_JBOSS=$PLATFORM_HOME/packaging/pkg/target/jboss
export PLATFORM_JBOSS

PLATFORM_RESOURCE=$PLATFORM_TOMCAT/conf/Catalina/localhost

PLATFORM_SCRIPT=$EXO_WORKING_DIR/scripts/plf
export PLATFORM_SCRIPT

alias cdplf="cd $PLATFORM_HOME"
alias cdplftomcat="cd $PLATFORM_TOMCAT"
alias cdplfjboss="cd $PLATFORM_JBOSS"
alias plfbuild="cd $PLATFORM_HOME && 
		   mvn install -Ppkg-tomcat -DskipTests &&
		   plfcpresource"
alias plfrun="JAVA_OPTS= &&  $PLATFORM_TOMCAT/bin/gatein-dev.sh run"
alias plfrunnormal="$PLATFORM_TOMCAT/bin/gatein.sh run"
alias plfcpresource="cp -Rv $PLATFORM_SCRIPT/docbase/* $PLATFORM_RESOURCE"
alias plfremovedata="rm -rfv $PLATFORM_TOMCAT/gatein/data"
alias openplf="open $PLATFORM_HOME"
alias openplftomcat="open $PLATFORM_TOMCAT"


###############################PLATFORM######################################
###########################################################################
###########################################################################

GATEIN_VERSION=3.2.0-Beta01-SNAPSHOT
export GATEIN_VERSION

GATEIN_HOME=$EXO_WORKING_DIR/eXoProjects/gatein/portal/branches/sprint_working
export GATEIN_HOME

GATEIN_TOMCAT=$GATEIN_HOME/packaging/tomcat/pkg/tc6/target/tomcat6
export GATEIN_TOMCAT

GATEIN_SCRIPT=$EXO_WORKING_DIR/scripts/gatein
export GATEIN_SCRIPT

GATEIN_JBOSS=$GATEIN_HOME/packaging/jboss-as5/pkg/target/jboss
export GATEIN_JBOSS

GATEIN_RESOURCE=$GATEIN_TOMCAT/conf/Catalina/localhost

alias cdgatein="cd $GATEIN_HOME"
alias cdgateintomcat="cd $GATEIN_TOMCAT"
alias cdgateinjboss="cd $GATEIN_JBOSS"
alias gateinbuild="cd $GATEIN_HOME && 
		   mvn install -Ppkg-tomcat -DskipTests &&
		   gateincpresource"
alias gateinrun="JAVA_OPTS= && $GATEIN_TOMCAT/bin/gatein-dev.sh run"
alias gateinrunnormal="$GATEIN_TOMCAT/bin/gatein.sh run"
alias gateincpresource="cp -Rv $GATEIN_SCRIPT/docbase/* $GATEIN_RESOURCE"
alias gateinremovedata="rm -rfv $GATEIN_TOMCAT/gatein/data"
alias opengatein="open $GATEIN_HOME"
alias opengateintomcat="open $GATEIN_TOMCAT"

############################EXOPORTAL######################################
###########################################################################
###########################################################################

PORTAL_VERSION=2.5.12-SNAPSHOT
export PORTAL_VERSION
PORTAL_HOME=$EXO_WORKING_DIR/eXoProjects/portal/branches/2.5.x
export PORTAL_HOME

PORTAL_TOMCAT=$EXO_WORKING_DIR/exo-working/exo-tomcat
export PORTAL_TOMCAT

PORTAL_RESOURCE=$PORTAL_TOMCAT/conf/Catalina/localhost

PORTAL_SCRIPT=$EXO_WORKING_DIR/scripts/exo
export PORTAL_SCRIPT

alias cdportal="cd $PORTAL_HOME"
alias cdportaltomcat="cd $PORTAL_TOMCAT"
alias portalclean="rm -rfv $PORTAL_TOMCAT"
alias portalbuild="cd $PORTAL_HOME && 
		   mvn install -Ppkg -DskipTests &&
		   portalcpresource"
alias portalrun="JAVA_OPTS= && sh $PORTAL_TOMCAT/bin/eXo-dev.sh run"
alias portalcpresource="cp -v $PORTAL_HOME/web/portal/src/main/resources/tomcat/portal.xml $PORTAL_RESOURCE && 
			cp -v $PORTAL_HOME/web/eXoResources/src/main/resources/tomcat/eXoResources.xml $PORTAL_RESOURCE &&
      cp -v $PORTAL_HOME/web/eXoSkinMac/src/main/resources/tomcat/eXoSkinMac.xml $PORTAL_RESOURCE &&
      cp -v $PORTAL_HOME/web/eXoSkinVista/src/main/resources/tomcat/eXoSkinVista.xml $PORTAL_RESOURCE"
alias portalremodata="rm -rfv $PORTAL_TOMCAT/temp"
alias openportal="open $PORTAL_HOME"
alias openportaltomcat="open $PORTAL_TOMCAT"

#################################WEBOS#####################################
###########################################################################
###########################################################################

WEBOS_HOME=$EXO_WORKING_DIR/eXoProjects/webos
export WEBOS_HOME

WEBOS_TOMCAT=$WEBOS_HOME/packaging/tomcat/pkg/target/tomcat
export WEBOS_TOMCAT

WEBOS_VERSION=2.0.0-SNAPSHOT
export WEBOS_VERSION

WEBOS_SCRIPT=$EXO_WORKING_DIR/scripts/webos
export WEBOS_SCRIPT

WEBOS_RESOURCE=$WEBOS_TOMCAT/conf/Catalina/localhost

alias cdwebos="cd $WEBOS_HOME"
alias cdwebostomcat="cd $WEBOS_TOMCAT"
alias webosrun="JAVA_OPTS= && $WEBOS_TOMCAT/bin/gatein-dev.sh run"
alias webosrunnormal="$WEBOS_TOMCAT/bin/gatein.sh run"

alias webosbuild="cd $WEBOS_HOME && 
		   mvn clean install -Ppkg-tomcat -DskipTests &&
		   weboscpresource"
		   
alias weboscpresource="cp -Rv $WEBOS_SCRIPT/docbase/* $WEBOS_RESOURCE"
alias webosremovedata="rm -rfv $WEBOS_TOMCAT/gatein/data"			

#################################COMMON####################################
###########################################################################
###########################################################################

alias cdhome="cd ~"
alias cdback='cd  $OLDPWD'

PATH=$FIREFOX:$GATEIN_HOME/packaging/pkg/target/tomcat/bin:$EXO_WORKING_DIR/scripts:$GATEIN_SCRIPT:$PORTAL_SCRIPT:$WEBOS_SCRIPT:$PLATFORM_SCRIPT:$M2_HOME/bin:$JAVA_HOME/bin:$SVN_HOME/bin:$ANT_HOME/bin:$PATH:/home/khoinguyen/Downloads/firefox:$IDEA_JDK:$IDEA_HOME/bin:$PLAY

export PATH

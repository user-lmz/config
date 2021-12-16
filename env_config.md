#set oracle jdk environment
export JAVA_HOME=/home/lmz/tools/Java/jdk1.8.0_291
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=${JAVA_HOME}/bin:$PATH

#SET MAVEN HOME
export MAVEN_HOME=/home/lmz/tools/Maven/apache-maven-3.8.1
export PATH=${MAVEN_HOME}/bin:$PATH

#SET GRADLE HOME
export GRADLE_HOME=/home/lmz/tools/Gradle/latest
export PATH=${GRADLE_HOME}/bin:${PATH}

#SET GOLANG HOME
export GOPATH=/home/lmz/tools/go
#export GOROOT=/home/lmz/go
export PATH=$GOPATH/bin:$PATH

#SET FFmpeg HOME
export FFMPEG_PATH=/home/lmz/tools/ffmpeg
export CLASSPATH=$FFMPEG_PATH/lib:$CLASSPATH
PATH=$FFMPEG_PATH/bin:$PATH

#SET NODE HOME
export NODE_HOME=/home/lmz/tools/npm/node-v16.13.1-linux-x64
export PATH=$PATH:$NODE_HOME/bin
export NODE_PATH=$NODE_HOME/lib/node_modules

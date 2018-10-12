rem To make this project work with maven, execute this batch file to install dependencies which are not in the central repository

call mvn install:install-file -DgroupId=com.ibm -DartifactId=ibmjsse -Dversion=1.0 -Dpackaging=jar -Dfile=wct-core\etc\lib\ibmjsse.jar
call mvn install:install-file -DgroupId=JimiProClasses -DartifactId=JimiProClasses -Dversion=1.0 -Dpackaging=jar -Dfile=wct-core\etc\lib\JimiProClasses.jar
call mvn install:install-file -DgroupId=org.eclipse.jdt.core -DartifactId=org.eclipse.jdt.core -Dversion=3.7.3 -Dpackaging=jar -Dfile=wct-core\etc\lib\org.eclipse.jdt.core_3.7.3.v20120119-1537.jar
call mvn install:install-file -DgroupId=poi-2.0-RC1-20031102 -DartifactId=poi-2.0-RC1-20031102 -Dversion=2.0 -Dpackaging=jar -Dfile=wct-core\etc\lib\poi-2.0-RC1-20031102.jar
call mvn install:install-file -DgroupId=smalltext-0.1.4 -DartifactId=smalltext-0.1.4 -Dversion=0.1.4 -Dpackaging=jar -Dfile=wct-core\etc\lib\smalltext-0.1.4.jar
call mvn install:install-file -DgroupId=org.archive.wayback -DartifactId=wayback-core -Dversion=1.2.0 -Dpackaging=jar -Dfile=wct-core\etc\lib\wayback-core-1.2.0.jar
call mvn install:install-file -DgroupId=it.unimi.dsi -DartifactId=mg4j -Dversion=2.0.1 -Dpackaging=jar -Dfile=wct-core\etc\lib\mg4j-2.0.1.jar

call mvn install:install-file -DgroupId=javax.xml -DartifactId=saaj-api -Dversion=1.2 -Dpackaging=jar -Dfile=wct-core\etc\lib\saaj.jar
call mvn install:install-file -DgroupId=net.sf -DartifactId=jargs -Dversion=1.0 -Dpackaging=jar -Dfile=wct-core\etc\lib\jargs.jar

call mvn install:install-file -DgroupId=net.sf -DartifactId=jargs -Dversion=1.0 -Dpackaging=jar -Dfile=wct-core\etc\lib\jargs.jar

call mvn install:install-file -DgroupId=org.archive -DartifactId=aheritrix -Dversion=1.14.1 -Dpackaging=jar -Dfile=wct-core\etc\lib\aheritrix-1.14.1.jar

call mvn install:install-file -DgroupId=xdoclet -DartifactId=xdoclet -Dversion=1.2.3-updated -Dpackaging=jar -Dfile=wct-core\etc\xdoclet-1.2.3-updated.jar
call mvn install:install-file -DgroupId=xdoclet -DartifactId=xjavadoc -Dversion=1.5-snapshot050611 -Dpackaging=jar -Dfile=wct-core\etc\xjavadoc-1.5-snapshot050611.jar

call mvn install:install-file -DgroupId=com.exlibris -DartifactId=dps-sdk -Dversion=2.0.0 -Dpackaging=jar -Dfile=wct-store\etc\lib\dps-sdk-2.0.0.jar
call mvn install:install-file -DgroupId=javassist -DartifactId=javassist -Dversion=2.6.ga -Dpackaging=jar -Dfile=wct-store\etc\lib\javassist-2.6.ga.jar
call mvn install:install-file -DgroupId=jbossall-client -DartifactId=jbossall-client -Dversion=4.2.2.ga -Dpackaging=jar -Dfile=wct-store\etc\lib\jbossall-client-4.2.2.ga.jar
call mvn install:install-file -DgroupId=jboss-jaxws-jbossws -DartifactId=jboss-jaxws-jbossws -Dversion=2.0 -Dpackaging=jar -Dfile=wct-store\etc\lib\jboss-jaxws-jbossws-2.0.jar
call mvn install:install-file -DgroupId=jbossws-client-jbossws -DartifactId=jbossws-client-jbossws -Dversion=2.0 -Dpackaging=jar -Dfile=wct-store\etc\lib\jbossws-client-jbossws-2.0.jar
call mvn install:install-file -DgroupId=jbossws-common-jbossws -DartifactId=jbossws-common-jbossws -Dversion=2.0 -Dpackaging=jar -Dfile=wct-store\etc\lib\jbossws-common-jbossws-2.0.jar
call mvn install:install-file -DgroupId=jbossws-spi -DartifactId=jbossws-spi -Dversion=4.2.2 -Dpackaging=jar -Dfile=wct-store\etc\lib\jbossws-spi-4.2.2.jar
call mvn install:install-file -DgroupId=jboss-xml-binding -DartifactId=jboss-xml-binding -Dversion=1.0.0.SP1 -Dpackaging=jar -Dfile=wct-store\etc\lib\jboss-xml-binding-1.0.0.SP1.jar
call mvn install:install-file -DgroupId=jboss-saaj -DartifactId=jboss-saaj -Dversion=4.2.2 -Dpackaging=jar -Dfile=wct-store\etc\lib\saaj.jar
call mvn install:install-file -DgroupId=policy -DartifactId=policy -Dversion=4.2.2.GA -Dpackaging=jar -Dfile=wct-store\etc\lib\policy-4.2.2.GA.jar
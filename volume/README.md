Install Apache Commons IO
===

```
cd /commons-io-2.8.0
mvn install:install-file -Dfile=commons-io-2.8.0.jar -DgroupID=org.apache.commons.io -DartifactID=io -Dversion=2.5 -Dpackaging=jar -DgeneratePom=true
```

Install deepsim repository
===

```
cd /volume
git clone https://github.com/parasol-aser/deepsim.git
```

Encoding
===

```
cd /volume
javac hogehoge.java
jar cvf piyo.jar *.class
java -jar deepsim/dcsim/encoding/encoding.jar piyo.jar
```
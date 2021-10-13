# JAVA

## INSTALL

```sh
sudo apt-cache search openjdk
sudo apt install <openjdk_package>
javac -version
```

## INSTALL CUSTOM VERSION

Download a Java version from :

* [Java OpenJDK archive > Java 8](https://jdk.java.net/archive/)
* [Java OpenJDK redhat archive](https://developers.redhat.com/products/openjdk/download)

Copy your JDK in JVM dir:

```sh
sudo mkdir -p /usr/lib/jvm
sudo cp -r <my_jdk_dir> /usr/lib/jvm
```

Install alternative:

```sh
sudo update-alternatives --install "/usr/bin/java" "java" "<my_jdk_dir>/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "<my_jdk_dir>/bin/javac" 1
# optional :
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "<my_jdk_dir>/bin/javaws" 1
```

Update java alternative:

```sh
sudo update-alternatives --set java /usr/lib/jvm/<my_jdk_dir>/bin/java
sudo update-alternatives --set javac /usr/lib/jvm/<my_jdk_dir>/bin/javac
# optional :
sudo update-alternatives --set javaws /usr/lib/jvm/<my_jdk_dir>/bin/javaws
```

## CONFIGURE

For Maven :

```sh
edit $HOME/.config/fish/config.fish
# write in fish config
> set -x JAVA_HOME /usr/lib/jvm/<my_jdk_dir>
source ~/.config/fish/config.fish
echo $JAVA_HOME
```

## TIPS

Switch from a java version to another :

```sh
sudo update-alternatives --config java
```
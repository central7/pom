/open https://raw.githubusercontent.com/verhas/jshboot/main/JshBoot.java
var boot=JshBoot.defaultLocalRepo();
boot.fetch(new URL("https://raw.githubusercontent.com/central7/pom/main/genpom_template.xml"), new File("genpom.xml"));
boot.sysexec("mvn","-f","genpom.xml","clean")
/exit
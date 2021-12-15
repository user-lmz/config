使用Spring boot自带的MongoDB数据库时必须加上
<dependency>
	<groupId>de.flapdoodle.embed</groupId>
	<artifactId>de.flapdoodle.embed.mongo</artifactId>
</dependency>

springboot项目打包：
先配置Artifacts
然后使用命令mvn clean install
会在target目录下生成jar文件

@Entity 说明这个 class 是实体类，并且使用默认的 orm 规则，即 class 名即数据库表中表名，class 字段名即表中的字段名。
@Entity 注解指名这是一个实体 Bean。

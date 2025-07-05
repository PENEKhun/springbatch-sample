package kr.huni.springbatchsample.example;

import lombok.RequiredArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.jdbc.core.simple.JdbcClient;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * Example component that demonstrates JdbcClient usage with H2 database.
 */
@Component
@RequiredArgsConstructor
public class JdbcClientExample implements CommandLineRunner {
    private final JdbcClient jdbcClient;

    @Override
    public void run(String... args) {
        System.out.println("JdbcClient Example");
        var a = jdbcClient.sql("SELECT * FROM USERS WHERE NAME = '홍길동'")
                .query((rs, rowNum) -> Map.of(
                                "id", rs.getLong("ID"),
                                "name", rs.getString("NAME"),
                                "email", rs.getString("EMAIL")
                        )
                ).list();

        System.out.println(a);
    }
}

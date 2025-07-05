package kr.huni.springbatchsample.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.JdbcClient;

import javax.sql.DataSource;

/**
 * Configuration class for JDBC-related beans.
 */
@Configuration
public class JdbcConfig {

    /**
     * Creates a JdbcClient bean for executing SQL queries.
     *
     * @param dataSource the auto-configured DataSource
     * @return a configured JdbcClient instance
     */
    @Bean
    public JdbcClient jdbcClient(DataSource dataSource) {
        return JdbcClient.create(dataSource);
    }
}

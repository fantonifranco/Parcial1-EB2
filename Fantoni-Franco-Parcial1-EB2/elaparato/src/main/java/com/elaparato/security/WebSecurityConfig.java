package com.elaparato.security;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.SecurityFilterChain;

@RequiredArgsConstructor
@Configuration
@EnableWebSecurity
public class WebSecurityConfig {

    public static final String ADMIN = "administrador";
    public static final String VEND = "vendedor";
    public static final String REPO = "repositor";
    private final JwtAuthConverter jwtAuthConverter;

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.authorizeHttpRequests()
                .requestMatchers(HttpMethod.GET, "/ventas/getall").hasAnyRole(VEND, ADMIN)
                .requestMatchers(HttpMethod.GET, "/productos/getall").hasAnyRole(REPO, ADMIN)
                .requestMatchers(HttpMethod.POST, "/ventas/create").hasAnyRole(ADMIN, VEND)
                .requestMatchers(HttpMethod.POST, "/productos/create").hasAnyRole(ADMIN, REPO)
                .requestMatchers(HttpMethod.PUT, "/ventas/edit").hasAnyRole(ADMIN, VEND)
                .requestMatchers(HttpMethod.PUT, "/productos/edit").hasAnyRole(ADMIN, REPO)
                .anyRequest().authenticated();
        http.oauth2ResourceServer()
                .jwt()
                .jwtAuthenticationConverter(jwtAuthConverter);
        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
        return http.build();
    }

}


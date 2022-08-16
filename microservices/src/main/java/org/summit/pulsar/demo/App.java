package org.summit.pulsar.demo;

import org.apache.kafka.clients.admin.NewTopic;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.kafka.config.TopicBuilder;
import org.springframework.scheduling.annotation.EnableScheduling;

import static org.summit.pulsar.demo.Constants.*;

@EnableScheduling
@SpringBootApplication
public class App {

    @Bean
    public NewTopic loneTalkerTopic() {
        return TopicBuilder
            .name(TOPIC_NAME)
            .partitions(1)
            .replicas(1)
            .build();
    }

    public static void main(String[] args) {
        SpringApplication.run(App.class, args);
    }
    
}

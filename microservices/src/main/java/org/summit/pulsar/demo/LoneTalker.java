package org.summit.pulsar.demo;

import java.util.Random;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.producer.ProducerRecord;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import static org.summit.pulsar.demo.Constants.*;

@Service
public class LoneTalker {

    private final Random random = new Random(System.currentTimeMillis());
    private final Logger logger = LoggerFactory.getLogger(LoneTalker.class);

    @Autowired
    private KafkaTemplate<String, String> kafkaTemplate;

    @Scheduled(fixedRate = 5000)
    public void saySomethingOutLoud() {

        int number = random.nextInt(1000);
        String randomThought = "[Producer] 🤷🏻‍♂️ Hey, I want to talk about the number " + number;

        ProducerRecord<String, String> message =
            new ProducerRecord<>(TOPIC_NAME,
                String.valueOf(number), randomThought);
        kafkaTemplate.send(message);

        logger.info(randomThought);

    }

    @KafkaListener(topics = Constants.TOPIC_NAME)
        public void listenToWhatIHaveJustSaid(ConsumerRecord<String, String> message) {
        logger.info("[Consumer] 🙋🏻‍♂️ OK. Let's talk about the number " + message.key());
    }

}

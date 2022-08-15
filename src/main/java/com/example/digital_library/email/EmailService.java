package com.example.digital_library.email;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

//@Service
//@AllArgsConstructor
public class EmailService implements EmailSender{

//    private final static Logger LOGGER = (Logger) LoggerFactory
//            .getLogger(EmailService.class);

    private final JavaMailSender mailSender;

    public EmailService(JavaMailSender mailSender) {
        this.mailSender = mailSender;
    }


    @Override
    @Async  // asynchronous service...
    public void send(String recipient, String email) {
        try{

            MimeMessage mimeMessage = mailSender.createMimeMessage();
            MimeMessageHelper helper =
                    new MimeMessageHelper(mimeMessage, "utf-8");
            helper.setText(email, true);
            helper.setTo(recipient);
            helper.setSubject("Confirm your email"); // auto-generated email <3
            helper.setFrom("hello@website.com");
            mailSender.send(mimeMessage);



        }catch (MessagingException e){
//            LOGGER.config(e.toString());
            throw new IllegalStateException("failed to send email\n" + e.toString());
        }
    }
}

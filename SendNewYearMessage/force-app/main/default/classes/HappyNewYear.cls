public class SendNewYearMail2 implements Schedulable{
    
    public void execute(SchedulableContext SC){
        
        Messaging.SingleEmailMessage message=new Messaging.SingleEmailMessage();
        
        List<String> emails=new List<String>();
            emails.add('mail1@example.com');
           emails.add('mail2@example.com');
           emails.add('mail3@example.com');
        emails.add('mail4@example.com');
            message.setToAddresses(emails);     //  message.setToAddresses(new String[]{'yourmail@example.com'});
        message.setSubject('Happy NewYear Message to my friends');
        message.setPlainTextBody('Happy NewYear! May the new year bring you hapiness, peace and prosperity');
        
        List<Messaging.Email> emailMessages=new List<Messaging.Email> {message}; // messaging.sendEmail(new Messaging.SingleEmailMessage[]{message});
        messaging.sendEmail(emailMessages);
    }


}
//anonymous window
//SendNewYearMail2 msg=new SendNewYearMail2();
//string cronExp='0 0 20 31 DEC ? 2023';
//system.schedule('Happy NewYear', cronExp, msg);
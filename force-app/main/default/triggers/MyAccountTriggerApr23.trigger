trigger MyAccountTriggerApr23 on Account (before insert) {
    
    system.debug('Hello Trigger Apr23');

}
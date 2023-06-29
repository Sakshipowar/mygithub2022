trigger CaseOrigin on Case (before insert) {
 for(case c : trigger.new){
  if(c.origin == 'Email'){
           c.status = 'New';
           c.priority = 'Medium';
          }
      }
}
identification division.
program-id.Batchproc.
  environment division.
  input-output section.
  file-control.
  select Trans-File assign to 'transaction.txt'
  organision is line sequential.

  data division.
  file section.
  fd trans-file.
  01 trans-record  pic x(80).
working-storage section.
   01 ws-total  pic 9(7)v99 value 0.
   01 ws-Amunt  pic 9(5)v99 value 0.  
  proccedure division.
  main-section.
  open input trans-file
  perform until EOF
read trans-file at end 
move 'Y' toneof
  not at end 
move Trans-record(1:7) to  ws-amunt
  add ws-amount to ws-total
  end-read
  end-perform
  close trans-file
  display "total amount processed: " ws-total
  stop run.
 
  
  

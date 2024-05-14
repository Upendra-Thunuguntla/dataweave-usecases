%dw 2.0
output json
---
// << - APPEND or >> - PREPEND operators adds the data to array. We can use + (Plus operator) to do the same operation
{
    "APPEND" : [1] << { "message" : "append"}, // 1 stays at index 0
    "PREPEND" :  { "message" : "append"} >> [1], // 1 goes to last index
    "JoinBy+" : [1] + { "message" : "append"}, // 1 stays at index 0 only and when using +, array should always be on left side 
    //Let's move the [1] to the right side and see what happens. uncomment the below line and find out.
    //"JoinBy+ButArrayOnRight" : { "message" : "append"} + [1] 
}
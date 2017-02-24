//time slot
// <html>
// <title></title>
// <head>
// <script>
//     function ValidateDate() {
//           var year=0;var sYear=0;var month=0;var day=0;
//           Startdt=document.getElementById("startDate").value;
//           Enddt = document.getElementById("endDate").value;
//
//           var Dates = [Startdt,Enddt];
//           var arr1=[];
//           var isValidDate=false;
//           var isLeapYear = false;
//           // Today's Date
//           var dateObj = new Date();
//           var Fyear = dateObj.getUTCFullYear();
//           for(i=0 ;i<Dates.length;i++)
//           {
//             isValidDate = false;
//             arr1=[];
//             arr1 = Dates[i].split('/');
//             sYear = parseInt(Dates[0].split('/')[2],10);
//             if(arr1.length == 3)
//             {
//                         year = parseInt(arr1[2],10);
//                         month = parseInt(arr1[1],10);
//                         day = parseInt(arr1[0],10);
//                         isValidTime=false;
//
//                             isLeapYear = false;
//                             if(year % 4 == 0)
//                                  isLeapYear = true;
//
//                             if((month==4 || month==6|| month==9|| month==11) && (day>=0 && day <= 30))
//                                     isValidDate=true;
//                             else if((month!=2) && (day>=0 && day <= 31))
//                                     isValidDate=true;
//                             if(!isValidDate)
//                             {
//                                 if(isLeapYear)
//                                 {
//                                     if(month==2 && (day>=0 && day <= 29))
//                                         isValidDate=true;
//                                 }
//                                 else
//                                 {
//                                     if(month==2 && (day>=0 && day <= 28))
//                                         isValidDate=true;
//                                 }
//                             }
//
//                     if(isValidDate)
//                     {
//                            if(i==1)
//                            {
//                                if(Fyear<sYear) {
//                                     alert("The project End date must be After the start date.");
//                                }
//                            }
//                            else {
//                               if(i==0 && Fyear>year) {
//                                alert("The project start date must be greater than today's date.");
//                               }
//                            }
//                     }
//                     else {
//                         alert("The date format is not correct");
//                     }                
//         }
//         else{
//           alert("The date format is not correct");
//         }
//       }
//     }
//
// </script>
// </head>
// <body>
// <form name="myform" onsubmit="ValidateDate()">
// <label><strong>Project Start Date: </strong></label><input type="text" id="startDate"/> <span id="startDiv"></span><br/><br/>
// <label><strong>Project End Date: </strong></label><input type="text" id="endDate"/> <span id="endDiv"></span><br/><br/>
// <button id="myButton">Validate</button>
// </form>
// </body>
// </html>

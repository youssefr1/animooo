class AppValidators {
 static String?  firstNameValidator(String? value){
   if(value ==null || value.trim().isEmpty){
     return 'Enter your first name';
   }else if(value.trim().length<3){
     return 'Enter your name must be at least 3 letter';
   }else{
     return null;
   }
 }
 static String?  lastNameValidator(String? value){
   if(value ==null || value.trim().isEmpty){
     return 'this field is required';
   }else if(value.trim().length<3){
     return 'Enter your name must be at least 3 letter';
   }else{
     return null;
   }
 }
 static String?  emailValidator(String? value){
   if(value ==null || value.trim().isEmpty){
     return 'this field is required';
   }else if(isEmail(value)==false){
     return 'Enter valid email formation';
   }else{
     return null;
   }
 }
 static bool isEmail(String value) {
   final emailRegex = RegExp(
     r'^[\w\.-]+@[\w\.-]+\.\w+$',
   );

   return emailRegex.hasMatch(value);
 }
}
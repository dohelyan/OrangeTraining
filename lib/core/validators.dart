String? requiredField (String? v)=>(v== null || v.trim().isEmpty)? 'this feild is required ' : null;
String ? emailValdator(String? v)
{
    if (requiredField(v)!= null) return 'email is required';
    final re= RegExp(r'^[\w\.\-]+@[\w\-]+\.[\w\-\.]+$');
    return re.hasMatch(v!.trim())? null : 'invald email';
}
String ? passwordValidTOR(String ?v)=>
(v != null && v.trim().length >= 6)? null : 'password must be at least 6 characters';
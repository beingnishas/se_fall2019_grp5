<!DOCTYPE html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script language="JavaScript" type="text/javascript" >



<%@page contentType="text/html" pageEncoding = "UTF-8"%>
$(document).ready(function() {
    $('#notify').click(function (doNotify){
        $.ajax({
        	type: "POST",
            url: "email.do" //this is my servlet
            
            }
        );
    });
})


<!--



function addOption(Sel, Text, Val)
{
  var newOpt = new Option(Text, Val);
  var selLength = Sel.length;
  Sel.options[selLength] = newOpt;
}

function deleteOption(Sel, theIndex)
{ 
  var selLength = Sel.length;
  if(selLength>0)
  {
    Sel.options[theIndex] = null;
  }
}

function moveOptions(SelFrom, SelTo)
{
  
  var selLength = SelFrom.length;
  var selectedText = new Array();
  var selectedValues = new Array();
  var selectedCount = 0;
  
  var i;
  
  // Find the selected Options in reverse order
  // and delete them from the 'from' Select.
  for(i=selLength-1; i>=0; i--)
  {
    if(SelFrom.options[i].selected)
    {
      selectedText[selectedCount] = SelFrom.options[i].text;
      selectedValues[selectedCount] = SelFrom.options[i].value;
      deleteOption(SelFrom, i);
      selectedCount++;
    }
  }
  
  // Add the selected text/values in reverse order.
  // This will add the Options to the 'to' Select
  // in the same order as they were in the 'from' Select.
  
  for(i=selectedCount-1; i>=0; i--)
  {
    addOption(SelTo, selectedText[i], selectedValues[i]);
  }
  
  
}

function clicked(e)
{
    if(confirm('Are you sure?')==True)
    	{e}
    
}

function viewOrd() {
	   var shown = document.getElementById("ord3");
	   if (shown.style.display == "none"){
	   shown.style.display = "block";}
	   else{
		   shown.style.display = "none";
	   }
	}

//-->
</script>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Orders Queue</title>
</head>
<body>


<h2>Order Queue</h2>
<br>


<form method="post">
<table border="0">
	<tr>
		<td>
		
			<select name="sel1" size="10" >



			<option value="3">Order 3</option>

			
			
			</select>
			
		</td>
		<td align="center" valign="middle">
		 
			<input type="button" value="Ready for pickup --&gt;" id = "notify"
			 onclick="if(confirm('Are you sure?')) moveOptions(this.form.sel1, this.form.sel2); doNotify();" /><br />
		
		</td>
		
		<td>
		
			<select name="sel2" size="10" >
			<option value="2">Order 2</option>
			
			</select>
		</td>
		<td align="center" valign="middle">
			<input type="button" value="Picked up --&gt;"
			 onclick="moveOptions(this.form.sel2, this.form.sel3)" /><br />
			<input type="button" value="&lt;--"
			 onclick="moveOptions(this.form.sel3, this.form.sel2)" />
		</td>
		<td>
		
			<select name="sel3" size="10" >

			<option value="1">Order 1</option>

			</select>

		</td>		
		</tr>
		
		<tr>
		<td>Unfulfilled</td>
		<td></td>
		<td>Ready for Pickup</td>
		<td></td>
		<td>Fulfilled</td>		
		</tr>
		
		
		
		
</table>
</form>

<div id="ord3" style="display:none;">Order 3:Chicken sub, fries, coke</div>

<%;
java.util.Date date = new java.util.Date(); 
%>

<div> Current date is <%=date %></div>

 
<button id = "ord" onClick = "viewOrd()">View Order</button>





</body>
</html>
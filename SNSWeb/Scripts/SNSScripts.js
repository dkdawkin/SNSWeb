function addItemBtn_Click()
{
    $('#confTable').stop().fadeOut();
    $('#addItemBtn').stop().fadeOut();
    $('#checkOutBtn').stop().fadeOut();
    $('#orderTableTitle').stop().text("- Add Item -");
    $('Title').stop().text(" Add Item ");
    $('#ordersTable').stop().fadeIn(250);
    $('#doneBtn').stop().fadeIn();

// Setting JqueryPage functions #<%=pageStateFadeOut.ClientID %>
    $('#pageFadeOut').val('addItemBtn_Click');
    $('#pageFadeIn').val('doneBtnClick');
    $('#cakeRow').stop().fadeIn();
    $('#cupcakeRow').stop().fadeIn();
    $('#cheesecakeRow').stop().fadeIn();
    $('#cookiesRow').stop().fadeIn();

}

function doneBtnClick() 
{
    $('#ordersTable').stop().fadeOut();
    $('#doneBtn').stop().fadeOut();
    $('#orderTableTitle').text('- Order -');
    $('Title').stop().text(" Order ");
    $('#confTable').stop().fadeIn(250);
    $('#addItemBtn').stop().fadeIn();
    $('#checkOutBtn').stop().fadeIn();

    // Setting JqueryPage functions
    $('#pageFadeIn').val('addItemBtn_Click');
    $('#pageFadeOut').val('doneBtnClick');

}


function checkVal()
{
    alert($('#hiddenField').val())
    alert($('#hiddenField1').val())
}

function addNewOrderLine(x)
{
    var orderLine = $('#occasionDdl option:selected').text() + " <>  " +
        $('#desertTypeDdl option:selected').text() + " <>  " +
        x + " <>  " +
        $('#servingSizeDdl option:selected').text() + " <>  " +
        $('#DesertFlavorDdl option:selected').text() + " <>  " +
        $('#frostingFlavorDdl option:selected').text() + " <>  ";
        alert(orderLine);

}


function Test()
{
    
}



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
    $('#hiddenField').val('FadeOut: confTable,addItemBtn,confTable');
    $('#hiddenField1').val('FadeIn: ordersTable,doneBtn');
    alert($('#hiddenField').val())
    alert($('#hiddenField1').val())
}

function doneBtnClick() {
    $('#ordersTable').stop().fadeOut();
    $('#doneBtn').stop().fadeOut();
    $('#orderTableTitle').text('- Order -');
    $('Title').stop().text(" Order ");
    $('#confTable').stop().fadeIn(250);
    $('#addItemBtn').stop().fadeIn();
    $('#checkOutBtn').stop().fadeIn();

    // Setting JqueryPage functions
    $('#hiddenField').val('Success stored value in hidden Field');
    $('#hiddenField1').val('FadeOut: ordersTable,doneBtn');
    alert($('#hiddenField').val())
    alert($('#hiddenField1').val())

   <!--- var valid = validating();

    if (valid == true) {

    } -->
}

function validating()
{

    if ($('#radioBtnYes').is(':checked')) {
        alert("it's checked");
        var cakeStandRental = "Yes";
    }

    if ($('#occasionDdl option:selected').text() == "  ") {
        alert("You must select an occasion.");
        return false;
    }

    if ($('#desertTypeDdl option:selected').text() == "") {
        alert("You must select a desert type.");
        //return false;
    }

    if ($('#servingSizeDdl option:selected').text() == "") {
        alert("You must select a serving size.");
        //return false;
    }
    if ($('#DesertFlavorDdl option:selected').text() == "") {
        alert("You must select a flavor for the desert.");
        //return false;
    }
    if ($('#frostingFlavorDdl option:selected').text() == "") {
        alert("You must select a flavor for the frosting.");
        //return false;
    }

    addNewOrderLine(cakeStandRental);
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
function desertDdlChanged()
{
    alert("Desert DDL was changed");
}

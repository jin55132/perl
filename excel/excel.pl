use Win32::OLE;

# Start Excel and make it visible
$xlApp = Win32::OLE->new('Excel.Application');
$xlApp->{Visible} = 1;

# Create a new workbook
$xlBook = $xlApp->Workbooks->Add;

# Our data that we will add to the workbook...
$mydata = [["Item",     "Category", "Price"], 
           ["Nails",    "Hardware",  "5.25"],
           ["Shirt",    "Clothing", "23.00"],
           ["Hammer",   "Hardware", "16.25"],
           ["Sandwich", "Food",      "5.00"],
           ["Pants",    "Clothing", "31.00"],
           ["Drinks",   "Food",      "2.25"]];

# Write all the data at once...
$rng = $xlBook->ActiveSheet->Range("A1:C7");
$rng->{Value} = $mydata;

# Create a PivotTable for the data...
$tbl = $xlBook->ActiveSheet->PivotTableWizard(1, $rng, "", "MyPivotTable");

# Set pivot fields...
$tbl->AddFields("Category", "Item");
$tbl->PivotFields("Price")->{Orientation} = 4; # 4=xlDataField

# Create a chart too...
$chart = $xlBook->Charts->Add;
$chart->SetSourceData($rng, 2);
$chart->{ChartType} = 70; # 3D-pie chart
$chart->Location(2, "Sheet4");

# Wait for user input...
print "Press <return> to continue...";
$x = <STDIN>;

# Clean up
$xlBook->{Saved} = 1;
$xlApp->Quit;
$xlBook = 0;
$xlApp = 0;

print "All done.";
				

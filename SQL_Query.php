<?php
	$table_name = "SC_TwinBridge_stream";
	$starda = new DateTime('7 days ago');
	$endda = new DateTime();
                
        $dbh = new PDO("odbc:DataloggerDSN", "czowebapp", "fru8Awr3");
        
	$columns = "TmStamp,SW_Depth_m,SW_Depth_m_Avg,WaterTemp_C,SpecCond";
// If we want to dynamically select the column names, this is helpful.
// We don't want to plot every column in the table, so we'll just statically
// set which we're interested in (above, $columns).
//        $query = "SELECT name FROM sys.columns WHERE object_id = OBJECT_ID('".$table_name."')";
//                
//        $stmt = $dbh->prepare($query);
//        $stmt->execute();
//
//        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
//
//        $temar = array();
//
//        for ($i = 0; $i < count($results); ++$i) {
//            $temar[$i] = $results[$i][name];
//        }
//
//        $out = implode(",",$temar);
//        $out .= "\n";
try {
        $query = "Select ".$columns." from ".$table_name." where TmStamp >= '$starda' and TmStamp <= '$endda' ORDER BY TmStamp";
        $stmt = $dbh->prepare($query);
        $result = $stmt->execute();
        while($row = $stmt->fetch()) {
           for ($j = 0; $j < count($results)-1; ++$j) 
                   {
              $out .= $row[$j].",";
           }
           $out .= $row[$j];
           $out .= "\n";
        }

        header("Content-type: text/x-csv");
        header("Content-Disposition: attachment; filename=$fileName.csv");
        echo $out;
} 
catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}

?>

